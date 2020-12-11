<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class Subscription extends Eloquent
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'plan_id', 'user_id', 'billed', 'expired_at', 'grace_period_ends', 'cancelled_at'
    ];
}
