<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class Plan extends Eloquent
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'name', 'cost'
    ];
}
