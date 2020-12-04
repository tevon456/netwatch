<?php

class Users extends Controller
{
    public function __construct()
    {
        //We do some authorization checks in the constructor 
        error_reporting(0);
        if (!$this->isAuthenticated()) {
            header("Location: http://localhost/php/netwatch/auth/login");
        }
        if (!$_SESSION['AUTH']['role'] == 'admin') {
            header("Location: http://localhost/php/netwatch/home/index");
        }
    }

    public function index()
    {
        $User = $this->model('user');
        $users = $User::all();
        $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
        $this->view('user/index', ['data' => $users, 'user' => $this->authenticatedUser()]);
    }

    public function read($param = '')
    {
        $User = $this->model('user');
        $users = $User::all();
        $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
        $this->view('home/index', ['data' => $users, 'user' => $this->authenticatedUser()]);
    }

    public function create($param = '')
    {
        $User = $this->model('user');
        $users = $User::all();
        $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
        $this->view('home/index', ['data' => $users, 'user' => $this->authenticatedUser()]);
    }

    public function update($param = '')
    {
        $User = $this->model('user');
        $users = $User::all();
        $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
        $this->view('home/index', ['data' => $users, 'user' => $this->authenticatedUser()]);
    }

    public function delete($param = '')
    {
        $User = $this->model('user');
        $users = $User::all();
        $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
        $this->view('home/index', ['data' => $users, 'user' => $this->authenticatedUser()]);
    }
}
