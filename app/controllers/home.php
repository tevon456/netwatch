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
    public function index($name = '')
    {
        $movie = $this->model('movie');
        $movies = $movie::all();
        $this->view('home/index', ['data' => $movies, 'user' => $this->authenticatedUser()]);
    }
}
