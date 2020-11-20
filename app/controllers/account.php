<?php

class Account extends Controller
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
        $this->view('home/index', ['user' => $this->authenticatedUser()]);
    }
}
