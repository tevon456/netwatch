<?php

class Auth extends Controller
{

    public function login()
    {
        $req = $_POST;
        if (isset($req['email'], $req['password'])) {
            $this->view('templates/callout', ['title' => 'Opps', 'body' => 'Opps']);
            $this->view('auth/login');
        } else {
            $this->view('auth/login');
        }
    }

    public function signup()
    {
        $req = $_POST;
        if (isset($req['email'], $req['password'])) {
            echo $req['email'];
        } else {
            $this->view('auth/login');
        }
    }

    public function logout()
    {
        $req = $_POST;
        if (isset($req['email'], $req['password'])) {
            echo $req['email'];
        } else {
            $this->view('auth/login');
        }
    }
}
