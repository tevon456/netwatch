<?php
require_once('../app/models/watchAnalytic.php');
class Home extends Controller
{
    public function __construct()
    {
        error_reporting(0);
        if (!$this->isAuthenticated()) {
            header("Location: http://localhost/php/netwatch/auth/login");
        }
    }
    public function index($param = '')
    {   //This controls what the user sees on the home page
        //load the movie model for using db
        $movie = $this->model('movie');

        if ($_SESSION['AUTH']['role'] == 'guest') {
            //return no movies for guest users
            $movies = 0;
        } elseif ($_SESSION['AUTH']['role'] == 'subscriber_standard') {
            //return 20 movies for standard package subscribers
            if (empty($param)) {
                $movies = $movie::limit(20)->get();
            } else {
                $movies = $movie::where('title', 'like', '%' . $param . '%')->orWhere('title', 'like', '%' . $param . '%')->limit(20)->get();
            }
        } elseif ($_SESSION['AUTH']['role'] == 'subscriber_premium') {
            //return 30 movies for premium subscribers
            if (empty($param)) {
                $movies = $movie::limit(30)->get();
            } else {
                $movies = $movie::where('title', 'like', '%' . $param . '%')->orWhere('title', 'like', '%' . $param . '%')->limit(30)->get();
            }
        } else {
            //data clerks and admins can view all movies

            if (empty($param)) {
                $movies = $movie::all();
            } else {
                $movies = $movie::where('title', 'like', '%' . $param . '%')->orWhere('title', 'like', '%' . $param . '%')->get();
            }
        }

        //Send back the navigation bar template and the home page
        $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
        $this->view('home/index', ['data' => $movies, 'user' => $this->authenticatedUser()]);
    }

    public function watch($param)
    {
        $user = User::where('email', $this->authenticatedUser()['email'])->first();
        $watch = WatchAnalytic::where([['movie_id', $param], ['user_id', $user->id]])->first();
        if (!empty($watch)) {
            $watch->watch_count =  $watch->watch_count + 1;
            $watch->save();
        } else {
            $watch = new WatchAnalytic;
            $watch->movie_id = $param;
            $watch->user_id = $user->id;
            $watch->watch_count =  1;
            $watch->save();
        }

        $movie = Movie::find($param);
        $movie->watch_count = $watch->watch_count;
        $this->view('home/watch', ['data' => $movie, 'user' => $this->authenticatedUser()]);
    }
}
