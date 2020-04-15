<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Planner extends Model
{
    public function Package(){
        return $this->hasMany(App\Package);
    }
    /*
    public function User(){
        return $this->belongsTo(App\User);
    }
    */
}
