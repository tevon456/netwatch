<?php

require_once('../app/models/plan.php');
require_once('../app/models/user.php');
require_once('../app/models/subscription.php');

//makes working with php dates amazing! https://github.com/briannesbitt/Carbon
use Carbon\Carbon;

class Account extends Controller
{
    public function __construct()
    {
        error_reporting(0);
        if (!$this->isAuthenticated()) {
            header("Location: http://localhost/php/netwatch/auth/login");
        }
    }
    public function index($param = '')
    {
        $req = $_POST;
        if (isset($req) && !empty($req)) {
            // $res = $this->createSubscription($this->authenticatedUser()['email'], filter_var($req['plan'], FILTER_SANITIZE_STRING), filter_var($req['renual'], FILTER_SANITIZE_STRING));

            if ($this->isSubscribed($this->authenticatedUser()['email'])) {
                echo 'yes';
            } else {
                echo 'no';
            }
            if (!empty($res['error'])) {
                $this->view('templates/callout', ['type' => 'bp3-intent-primary', 'title' => 'Active subscriber', 'body' => 'subscription successful']);
                $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
                $this->view('account/index', ['user' => $this->authenticatedUser()]);
            } else {
                $this->view('templates/callout', ['type' => 'bp3-intent-primary', 'title' => 'Active subscriber', 'body' => 'subscription successful']);
                $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
                $this->view('account/index', ['user' => $this->authenticatedUser()]);
            }
        } else {
            //get the data if present for sub
            $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
            $this->view('account/index', ['user' => $this->authenticatedUser()]);
        }
    }
}
