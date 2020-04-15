<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    public function planner()
    {
        return $this->belongsTo('App\Planner');
    }
}
