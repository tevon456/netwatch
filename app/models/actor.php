<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class Actor extends Eloquent
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'first_name', 'last_name'
    ];
}
