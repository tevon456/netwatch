<?php
require_once('../app/models/watchAnalytic.php');
require_once('../app/models/subscription.php');

use Carbon\Carbon;

class Report extends Controller
{
    public function __construct()
    {
        error_reporting(0);
        if (!$this->isAuthenticated()) {
            header("Location: http://localhost/php/netwatch/auth/login");
        }
        if (!$_SESSION['AUTH']['role'] == 'admin') {
            header("Location: http://localhost/php/netwatch/home/index");
        }
    }
    public function index($param = '')
    {   //This controls what the user sees on the home page

        //count reports
        $mostWatched = WatchAnalytic::orderBy('watch_count', 'DESC')->first();
        $movie = Movie::find($mostWatched->id);

        $data['movie_count'] = Movie::count();
        $data['most_watched'] = $movie->title;
        $data['user_count'] = User::count();
        $data['subscribed_count'] = Subscription::where([['expired_at', '>', Carbon::now()], ['cancelled_at', null]])->count();
        $data['unsubscribed_count'] = Subscription::where([['expired_at', '<', Carbon::now()], ['cancelled_at', '>', Carbon::now()]])->count();
        $data['revenue'] = Subscription::sum('billed');

        //Send back the navigation bar template and the home page
        $this->view('templates/navigation', ['user' => $this->authenticatedUser()]);
        $this->view('reports/index', ['data' => $data, 'user' => $this->authenticatedUser()]);
    }
}
