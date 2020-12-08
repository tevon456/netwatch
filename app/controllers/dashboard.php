<?php

require_once('../app/models/movie.php');

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
        $movies = $Movie::all();

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

            //load the movies, actors and actors_movies models
            $Movie = $this->model('movie');
            $Actor = $this->model('actor');
            $ActorMovies = $this->model('actorsMovie');

            //Store the movie to the database 
            $movie 
            $Movie::create([
                'title' => $title,
                'description' => $description,
                'thumbnail' => $thumbnail,
                'trailer' => $trailer,
                'year' => $year,
                'category' => $category,
                'country' => $country,
                'duration' => $duration,
                'publisher' => $publisher,
            ]);



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
            print_r($req['role']);

            //Sanitization and setting values
            $first_name = filter_var($req['first_name'], FILTER_SANITIZE_STRING);
            $last_name = filter_var($req['last_name'], FILTER_SANITIZE_STRING);
            $email = filter_var($req['email'], FILTER_SANITIZE_EMAIL);
            $role = $req['role'];

            //Perform a query on the email to see if it exist
            $exists = User::where('email', $email)->get();
            //Validation
            if (!filter_var($email, FILTER_VALIDATE_EMAIL) === true) {
                /* 
                INVALID EMAIL
                Return callout template with an error message and the signup view
                */
                $this->view('templates/callout', ['title' => 'Error', 'body' => 'The email address provided is not valid']);
                $this->view('user/update');
                //End script execution.
                die();
            } else if (empty($exists)) {
                /* 
                DUPLICATE EMAIL
                If an email is in use return an error message
                */
                $this->view('templates/callout', ['title' => 'Error', 'body' => 'A user with that email already exists']);
                $this->view('user/update');
                //End script execution.
                die();
            }

            //Store the user 
            $user = User::find($param);
            $user->first_name = $first_name;
            $user->last_name = $last_name;
            $user->email = $email;
            $user->role = $role;
            $user->save();

            header("Location: http://localhost/php/netwatch/users/index");
            die();
        } else {
            $User = $this->model('user');
            $user = $User::find($param);
            $this->view('user/update', ['data' => $user, 'user' => $this->authenticatedUser()]);
        }
    }

    public function delete($param)
    {
        //from the delete url get the id as param then load the database models for actors_movies and movies.
        $Movie = $this->model('movie');
        $ActorMovies = $this->model('actorsMovie');

        //find the movie by the param and the actors_movies by the movie id.
        $movie = $Movie::find($param);
        $actormovies = $ActorMovies::where('movie_id', $movie->id)->get();

        //delete the records.
        $actormovies->delete();
        $movie->delete();

        //load to movies list dashboard page
        header("Location: http://localhost/php/netwatch/dashboard/index");
    }
}
