<?php

use Laminas\Crypt\Password\Bcrypt;

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
        $users = User::all();
        $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
        $this->view('user/index', ['data' => $users, 'user' => $this->authenticatedUser()]);
    }

    public function create()
    {
        $req = $_POST;
        //Checks if the values we need are set on the request array
        if (isset($req) && !empty($req)) {
            //Sanitization and setting values
            $first_name = filter_var($req['first_name'], FILTER_SANITIZE_STRING);
            $last_name = filter_var($req['last_name'], FILTER_SANITIZE_STRING);
            $email = filter_var($req['email'], FILTER_SANITIZE_EMAIL);
            $password = $req['password'];
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
                $this->view('user/create');
                //End script execution.
                die();
            } else if (empty($exists)) {
                /* 
                DUPLICATE EMAIL
                If an email is in use return an error message
                */
                $this->view('templates/callout', ['title' => 'Error', 'body' => 'A user with that email already exists']);
                $this->view('user/create');
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
                'role' => $role,
            ]);
            header("Location: http://localhost/php/netwatch/users/index");
            die();
        } else {
            $this->view('user/create');
        }
    }

    public function update($param = '')
    {

        $req = $_POST;
        //Checks if the values we need are set on the request array
        if (isset($req) && !empty($req)) {
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
        $user = User::find($param);
        if ($user->email == $this->authenticatedUser()['email']) {
            $this->view('templates/callout', ['type' => 'bp3-intent-danger', 'title' => 'Error', 'body' => 'Not allowed to delete your own account <a href="../../users/index" class="p-0.5 bp3-button bp3-icon-arrow-left">back</a>']);
            die();
        } else {
            $user->delete();
            header("Location: http://localhost/php/netwatch/users/index");
        }
    }
}
