<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class WatchAnalytic extends Eloquent
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'movie_id', 'user_id', 'watch_count',
    ];
}
