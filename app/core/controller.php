<?php


use Laminas\Crypt\Password\Bcrypt;
use Carbon\Carbon;

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

            //get info about the subscription for the user whos email is provided
            $sub = $this->getUserSubscription($email);
            //check if the property grace exist
            if ($sub->grace) {
                //check if fifteen days passed since the expiration of subscription
                if (Carbon::parse($sub->grace)->isPast()) {
                    //update user to suspended
                    $user->role == 6;
                    $user->save();
                    //return error message in view template
                    $this->view('templates/callout', ['type' => 'bp3-intent-danger', 'title' => 'Suspended', 'body' => 'This is due to 15 days passing since your last subscription expired']);
                    $this->view('auth/login');
                    die();
                }
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
     * @return  array name,email,role
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
            // setcookie("AUTH", "", time() - 3600);
            header("Location: http://localhost/php/netwatch/auth/login");
        }
    }

    /**
     * creates a subscription and returns an associative array with error and message;
     * @param email - string user email
     * @param plan - string standard or premium
     * @param renunal - string yearly or monthly  
     * @return  array error,message
     */
    public function createSubscription($email, $selected_plan, $renual)
    {
        //if subscribed then skip the logic and return a message
        if ($this->isSubscribed($email)) {
            return $res['message'] = 'this user is already subscribed';
        }

        $date = Carbon::now();
        //select plan from database
        $plan = Plan::where('name', $selected_plan)->first();
        if (!$plan) {
            $res['error'] = 'plan does not exist';
        }

        //set multiplier based on renual
        if ($renual == 'yearly') {
            $multiplier = 12;
        } else {
            $multiplier = 1;
        }
        //calculate total
        $total = ($multiplier * $plan->cost);

        //get the user by email
        $user = User::where('email', $email)->first();

        //response array that is returned
        if (!$user) {
            $res['error'] = 'user does not exist';
        }


        //check if user is not subscribed
        if (!$this->isSubscribed($email)) {
            //create subscription
            Subscription::create([
                'plan_id' => $plan->id,
                'user_id' => $user->id,
                'billed' => $total,
                'expired_at' => $date->add($multiplier, 'month'),
                'cancelled_at' => null,
            ]);

            //check the plan type and update the user's role to standard or premium subscriber
            if ($plan->name = 'standard') {
                $user->role =  3;
                $user->save();
            } else {
                $user->role =  4;
                $user->save();
            }
            $res['message'] = 'subscription active for $multiplier month(s) billed at $total' . '';
        } else {
            $res['message'] = 'this user is already subscribed';
        }
        return $res;
    }

    /**
     * checks if the user by the provided email has an active subscription
     * @param email - string user email
     * @return  bool
     */
    public function isSubscribed($email)
    {
        //get the user by email
        $user = User::where('email', $email)->first();
        //check database if the user has an active
        $current = Subscription::where([['user_id', $user->id], ['expired_at', '>', Carbon::now()], ['cancelled_at', null]])->first();
        if (empty($current)) {
            return false;
        } else {
            return true;
        }
    }

    //get the logged in user's subscription details if any
    public function getCurrentUserSubscription()
    {
        //get the user by email
        $user = User::where('email', $this->authenticatedUser()['email'])->first();
        //check database if the user has an active
        $current = Subscription::where([['user_id', $user->id], ['expired_at', '>', Carbon::now()], ['cancelled_at', null]])->first();
        $current->plan = Plan::select('name')->find($current->plan_id);
        $current->started = Carbon::parse($current->created_at)->toFormattedDateString();
        $current->expires = Carbon::parse($current->expired_at)->toFormattedDateString();
        $current->grace = Carbon::parse($current->expired_at)->add(15, 'day');
        return $current;
    }

    public function getUserSubscription($email)
    {
        //get the user by email
        $user = User::where('email', $email)->first();
        //check database if the user has an active
        $current = Subscription::where([['user_id', $user->id], ['expired_at', '>', Carbon::now()], ['cancelled_at', null]])->first();
        $current->plan = Plan::select('name')->find($current->plan_id);
        $current->started = Carbon::parse($current->created_at)->toFormattedDateString();
        $current->expires = Carbon::parse($current->expired_at)->toFormattedDateString();
        $current->grace = Carbon::parse($current->expired_at)->add(15, 'day');
        return $current;
    }

    //end the subscription 
    public function cancelSubscription()
    {
        $user = User::where('email', $this->authenticatedUser()['email'])->first();
        if ($user->role == 1 || $user->role == 2) {
            header("Location: http://localhost/php/netwatch/auth/login");
        }
        $current = Subscription::where([['user_id', $user->id], ['expired_at', '>', Carbon::now()], ['cancelled_at', null]])->first();
        $current->cancelled_at = Carbon::now();
        $current->save();
        $user->role =  5;
        $user->save();
        $this->endUserSession();
    }
}
