<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Planner extends Model
{
    protected $guarded = [];
    
    public function package()
    {
        $this->hasMany('App\Package');
    }

   
}
