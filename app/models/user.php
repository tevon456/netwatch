<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class User extends Eloquent
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'first_name', 'last_name', 'email', 'password', 'role', 'active'
    ];
    protected $attributes = [
        'role' => 5,
    ];
}
