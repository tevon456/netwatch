<?php
//load the illuminate package 
use Illuminate\Database\Capsule\Manager as Capsule;

$capsule = new Capsule;

// ORM Object relational mapper 
$capsule->addConnection([
    'driver' => 'mysql',
    'host' => '127.0.0.1',
    'username' => 'root',
    // 'password' => 'root',
    'charset'   => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'database' => 'netwatch',
    'prefix'    => '',
]);

// Setup the Eloquent ORM... (optional; unless you've used setEventDispatcher())
$capsule->bootEloquent();
