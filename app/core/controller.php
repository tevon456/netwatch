<?php


use Laminas\Crypt\Password\Bcrypt;

class Controller
{
    public function model($model)
    {
        require_once '../app/models/' . $model . '.php';
        return new $model();
    }

    public function view($view, $data = [])
    {
        require_once '../app/views/' . $view . '.php';
    }

    /**
     * Authenticates the user using the credentials passed as params
     *
     * @return  bool  true if successful
     * 
     * 
     */
    public function authenticate($email, $password)
    {
        return $this->authenticator($email, $password);
    }

    private function authenticator($email, $password)
    {
        //prepare bcrypt
        $bcrypt = new Bcrypt();
        //Query the user by email
        $user = User::where('email', $email)->first();

        //Check if a user was returned from the query
        if ($user) {
            if ($user->role == 6) {
                $this->view('templates/callout', ['type' => 'bp3-intent-danger', 'title' => 'Error', 'body' => 'This account has been suspended']);
                $this->view('auth/login');
                die();
            }
            //hash and compare provided password to hashed password in DB
            if ($bcrypt->verify($password,  $user->password)) {
                session_start();
                $Role = $this->model('role');
                $role = $Role::where('id', $user->role)->first();
                $sessionPayload = ['name' => $user->first_name . ' ' . $user->last_name, 'email' => $user->email, 'role' => $role->name];
                $_SESSION['AUTH'] = $sessionPayload;
                setcookie('AUTH', $sessionPayload, time() + (86400 * 30), "/");
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    /**
     * returns the logged in user's associative array from the global session variable, use isAuthenticated() before running this method to check if there is a user;
     *
     * @return  array name,email
     * 
     * 
     */
    public function authenticatedUser()
    {
        //returns the user associative array from the global session variable
        session_start();
        if (isset($_SESSION['AUTH'])) {
            return $_SESSION['AUTH'];
        }
    }

    /**
     * Checks if the user is authenticated
     *
     * @return  bool 
     * 
     */
    public function isAuthenticated()
    {
        session_start();
        if (isset($_SESSION['AUTH'])) {
            return true;
        } else {
            return false;
        }
    }

    public function endUserSession()
    {
        if (isset($_SESSION['AUTH'])) {
            session_unset();
            session_destroy();
            setcookie("AUTH", "", time() - 3600);
            header("Location: http://localhost/php/netwatch/auth/login");
        }
    }
}
