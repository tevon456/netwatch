<?php

require_once('../app/models/plan.php');
require_once('../app/models/user.php');
require_once('../app/models/subscription.php');

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
            //initiate the subscription
            $res = $this->createSubscription($this->authenticatedUser()['email'], filter_var($req['plan'], FILTER_SANITIZE_STRING), filter_var($req['renual'], FILTER_SANITIZE_STRING));
            if (!empty($res['error'])) {
                //error
                $this->view('templates/callout', ['type' => 'bp3-intent-warning', 'title' => 'Active subscriber', 'body' => $res['error']]);
                $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
                $this->view('account/index', ['user' => $this->authenticatedUser()]);
            } else {
                //success
                $this->view('templates/callout', ['type' => 'bp3-intent-primary', 'title' => 'Active subscriber', 'body' => $res['message']]);
                $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
                $this->view('account/subscribed', ['data' => $this->getCurrentUserSubscription(), 'user' => $this->authenticatedUser()]);
            }
        } else {
            //if the user is subscribed show the plan details
            if ($this->authenticatedUser()['role'] == 'admin' || $this->authenticatedUser()['role'] == 'data_clerk') {
                //default view for admins and clerks as they cannot subscribe 
                $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
                $this->view('account/admin', ['user' => $this->authenticatedUser()]);
            } elseif ($this->isSubscribed($this->authenticatedUser()['email'])) {
                $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
                $this->view('account/subscribed', ['data' => $this->getCurrentUserSubscription(), 'user' => $this->authenticatedUser()]);
            } else {
                //default view 
                $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
                $this->view('account/index', ['user' => $this->authenticatedUser()]);
            }
        }
    }

    public function unsubscribe()
    {
        $this->cancelSubscription();
    }
}
