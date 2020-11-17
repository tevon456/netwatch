<?php

class Home extends Controller
{

    public function index($name = '')
    {
        $movie = $this->model('movie');
        $movies = $movie::all();
        $this->view('home/index', ['data' => $movies]);
    }

    public function create($name = '', $email = '')
    {
        User::create([
            'name' => $name,
            'email' => $email,
        ]);
    }
}
