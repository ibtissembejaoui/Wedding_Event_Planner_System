<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    public function Planner(){
        return $this->belongsTo(App\Planner);
    }
}
