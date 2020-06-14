<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    protected $guarded = [];
    
    protected $dates = [
        'package_date'
    ];


    public function User(){
        return $this->belongsTo('App\User');
    }
}
