<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class ActorsMovie extends Eloquent
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'actor_id', 'movie_id'
    ];
}
