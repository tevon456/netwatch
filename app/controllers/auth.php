<?php

use Laminas\Crypt\Password\Bcrypt;

require_once('../app/models/subscription.php');

class Auth extends Controller
{
    public function __construct()
    {
        if ($this->isAuthenticated()) {
            header("Location: http://localhost/php/netwatch/home/index");
        }
    }
    public function login()
    {
        $req = $_POST;
        if (isset($req['email'], $req['password'])) {

            //Sanitization and setting values
            $email = filter_var($req['email'], FILTER_SANITIZE_EMAIL);
            $password = $req['password'];

            //Validation
            if (!filter_var($email, FILTER_VALIDATE_EMAIL) === true) {
                /* 
                INVALID EMAIL
                Return callout template with an error message and the signup view
                */
                $this->view('templates/callout', ['type' => 'bp3-intent-danger', 'title' => 'Error', 'body' => 'The email address provided is not valid']);
                $this->view('auth/login');
                //End script execution.
                die();
            }

            // pass in the provided email and password to be checked
            if ($this->authenticate($email, $password)) {
                header("Location: http://localhost/php/netwatch/home/index");
            } else {
                $this->view('templates/callout', ['type' => 'bp3-intent-danger', 'title' => 'Incorrect credentials', 'body' => 'The email or password provided was incorrect']);
                $this->view('auth/login');
            }
        } else {
            $this->view('auth/login');
        }
    }

    public function signup()
    {
        $req = $_POST;
        //Checks if the values we need are set on the request array
        if (isset($req['first_name'], $req['last_name'], $req['email'], $req['password'])) {

            //Sanitization and setting values
            $first_name = filter_var($req['first_name'], FILTER_SANITIZE_STRING);
            $last_name = filter_var($req['first_name'], FILTER_SANITIZE_STRING);
            $email = filter_var($req['email'], FILTER_SANITIZE_EMAIL);
            $password = $req['password'];

            //Perform a query on the email to see if it exist
            $exists = User::where('email', $email)->get();

            //Validation
            if (!filter_var($email, FILTER_VALIDATE_EMAIL) === true) {
                /* 
                INVALID EMAIL
                Return callout template with an error message and the signup view
                */
                $this->view('templates/callout', ['title' => 'Error', 'body' => 'The email address provided is not valid']);
                $this->view('auth/signup');
                //End script execution.
                die();
            } else if (empty($exists)) {
                /* 
                DUPLICATE EMAIL
                If an email is in use return an error message
                */
                $this->view('templates/callout', ['title' => 'Error', 'body' => 'A user with that email already exists']);
                $this->view('auth/signup');
                //End script execution.
                die();
            }

            // Hashing and Salting our password for secure storage in DB
            $bcrypt = new Bcrypt();
            $hashedPassword = $bcrypt->create($password);

            //Store the user 
            User::create([
                'first_name' => $first_name,
                'last_name' => $last_name,
                'email' => $email,
                'password' => $hashedPassword,
            ]);

            $this->authenticate($email, $password);
            $this->view('templates/callout', ['title' => 'Success', 'body' => 'Welcome to Netwatch']);
            $this->view('home/index');
        } else {
            $this->view('auth/signup');
        }
    }

    public function logout()
    {
        $this->endUserSession();
    }
}
