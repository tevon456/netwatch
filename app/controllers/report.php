<?php

class Report extends Controller
{
    public function __construct()
    {
        error_reporting(0);
        if (!$this->isAuthenticated()) {
            header("Location: http://localhost/php/netwatch/auth/login");
        }
        if (!$_SESSION['AUTH']['role'] == 'admin') {
            header("Location: http://localhost/php/netwatch/home/index");
        }
    }
    public function index($param = '')
    {   //This controls what the user sees on the home page

        //count reports
        $data['movie_count'] = Movie::count();
        $data['user_count'] = User::count();

        //Send back the navigation bar template and the home page
        $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
        $this->view('reports/index', ['data' => $data, 'user' => $this->authenticatedUser()]);
    }
}
