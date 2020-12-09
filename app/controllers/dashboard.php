<?php

require_once('../app/models/movie.php');
require_once('../app/models/actor.php');
require_once('../app/models/actorsMovie.php');

class Dashboard extends Controller
{
    public function __construct()
    {
        //disable php errors on page 
        error_reporting(0);
        //if user not a logged in user send to login page
        if (!$this->isAuthenticated()) {
            header("Location: http://localhost/php/netwatch/auth/login");
        }
        //if user not a admin or data clerk send to home page
        if (!$_SESSION['AUTH']['role'] == 'admin' || !$_SESSION['AUTH']['role'] == 'data_clerk') {
            header("Location: http://localhost/php/netwatch/home/index");
        }
    }

    public function index()
    {
        //load the movies, actors and actors_movies models
        $Movie = $this->model('movie');
        $Actor = $this->model('actor');
        $ActorMovies = $this->model('actorsMovie');

        //select all movies 
        $movies = $Movie::orderBy('updated_at')->get();

        //show navigation bar view
        $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
        //show movies list dashboard and provide the view with all movies, logged in user, actor and actors_movies models for the view to use
        $this->view('dashboard/index', ['data' => $movies, 'user' => $this->authenticatedUser(), 'actorModel' => $Actor, 'actorMoviesModel' => $ActorMovies]);
    }

    public function create()
    {
        $req = $_POST;
        //Checks if the values we need are set on the request array
        if (isset($req) && !empty($req)) {
            //Sanitization and setting values
            $title = filter_var($req['title'], FILTER_SANITIZE_STRING);
            $description = filter_var($req['description'], FILTER_SANITIZE_STRING);
            $thumbnail = filter_var($req['thumbnail'], FILTER_SANITIZE_STRING);
            $trailer = filter_var($req['trailer'], FILTER_SANITIZE_STRING);
            $year = filter_var($req['year'], FILTER_SANITIZE_STRING);
            $category = filter_var($req['category'], FILTER_SANITIZE_STRING);
            $country = filter_var($req['country'], FILTER_SANITIZE_STRING);
            $duration = filter_var($req['duration'], FILTER_SANITIZE_STRING);
            $publisher = filter_var($req['publisher'], FILTER_SANITIZE_STRING);
            $actors = filter_var($req['actors'], FILTER_SANITIZE_STRING);

            //Store the movie to the database 
            $movie = new Movie;
            $movie->title = $title;
            $movie->description = $description;
            $movie->thumbnail = $thumbnail;
            $movie->trailer = $trailer;
            $movie->year = $year;
            $movie->category = $category;
            $movie->country = $country;
            $movie->duration = $duration;
            $movie->publisher = $publisher;
            $movie->save();

            //load the movies, actors and actors_movies models
            $actor = new Actor;
            $actorMovies = new ActorsMovie;

            //create an array of actors separated by commas
            $actorArray = explode(',', $actors);

            // for each array entry we save the actor to the actor database
            foreach ($actorArray as $entry) {
                //get the first and lastname by splitting each entry by whitespace
                $name = explode(' ', $entry);

                //save the actor to the databse
                $actor->first_name = $name[0];
                $actor->last_name = $name[1];
                $actor->save();

                //store on the relational table that links actors and movies 
                $actorMovies->actor_id = $actor->id;
                $actorMovies->movie_id = $movie->id;
                $actorMovies->save();
            }
            header("Location: http://localhost/php/netwatch/dashboard/index");
            die();
        } else {
            $this->view('dashboard/create');
        }
    }

    public function update($param = '')
    {
        $req = $_POST;
        //Checks if the values we need are set on the request array
        if (isset($req) && !empty($req)) {
            //Sanitization and setting values
            $title = filter_var($req['title'], FILTER_SANITIZE_STRING);
            $description = filter_var($req['description'], FILTER_SANITIZE_STRING);
            $thumbnail = filter_var($req['thumbnail'], FILTER_SANITIZE_STRING);
            $trailer = filter_var($req['trailer'], FILTER_SANITIZE_STRING);
            $year = filter_var($req['year'], FILTER_SANITIZE_STRING);
            $category = filter_var($req['category'], FILTER_SANITIZE_STRING);
            $country = filter_var($req['country'], FILTER_SANITIZE_STRING);
            $duration = filter_var($req['duration'], FILTER_SANITIZE_STRING);
            $publisher = filter_var($req['publisher'], FILTER_SANITIZE_STRING);

            //Store the movie to the database 
            $movie = Movie::find($param);
            $movie->title = $title;
            $movie->description = $description;
            $movie->thumbnail = $thumbnail;
            $movie->trailer = $trailer;
            $movie->year = $year;
            $movie->category = $category;
            $movie->country = $country;
            $movie->duration = $duration;
            $movie->publisher = $publisher;
            $movie->save();

            header("Location: http://localhost/php/netwatch/dashboard/index");
            die();
        } else {
            $movie = Movie::find($param);
            $this->view('dashboard/update', ['data' => $movie, 'user' => $this->authenticatedUser()]);
        }
    }

    public function delete($param = '')
    {

        //find the movie by the param and the actors_movies by the movie id.
        $movie = Movie::find($param);
        $actormovies = ActorsMovie::where('movie_id', $movie->id)->get();
        ActorsMovie::destroy($actormovies->toArray());

        //delete the movie
        $movie->delete();

        //load to movies list dashboard page
        header("Location: http://localhost/php/netwatch/dashboard/index");
    }
}
