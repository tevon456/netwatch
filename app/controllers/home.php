<?php

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
            $movies = $movie::limit(20)->get();
        } elseif ($_SESSION['AUTH']['role'] == 'subscriber_premium') {
            //return 30 movies for premium subscribers
            $movies = $movie::limit(30)->get();
        } else {
            //data clerks and admins can view all movies
            $movies = $movie::all();
        }

        //Send back the navigation bar template and the home page
        $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
        $this->view('home/index', ['data' => $movies, 'user' => $this->authenticatedUser()]);
    }
}
