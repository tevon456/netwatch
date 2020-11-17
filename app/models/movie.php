<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class Movie extends Eloquent
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'title', 'description', 'thumbnail', 'trailer'
    ];
}
