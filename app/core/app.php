<?php

/**
 * Main app class
 * ...
 */
class App
{
    protected $controller = 'home';
    protected $method = 'index';
    protected $params = [];

    /**
     * Responsible for checking and useing the correct controller based on the url
     * 
     */
    public function __construct()
    {

        /* given a url /home/index/3 the code below evaluates the /home section
           of the url and initializes the the home controller doing checks to ensure said controller exists
        */
        $url = $this->parseUrl();
        if (file_exists('../app/controllers/' . $url[0] . '.php')) {
            $this->controller = $url[0];
            unset($url[0]);
        }
        require_once '../app/controllers/' . $this->controller . '.php';

        /* given a url /home/index/3 the code below evaluates the /index section
           of the url and calls the method index of home controller doing checks
           to ensure said said exists
        */
        $this->controller = new $this->controller;

        if (isset($url[1])) {
            if (method_exists($this->controller, $url[1])) {
                $this->method = $url[1];
                unset($url[1]);
            }
        }

        $this->params = $url ? array_values($url) : [];

        call_user_func_array([$this->controller, $this->method], $this->params);
    }

    /**
     * Parses the url
     *
     * @return  array  containing the parsed url parts
     * ...
     * 
     */
    public function parseUrl()
    {
        if (isset($_GET['url'])) {
            return $url = explode('/', filter_var(rtrim($_GET['url'], '/'), FILTER_SANITIZE_URL));
        }
    }
}
