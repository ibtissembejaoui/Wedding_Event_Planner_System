<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Event extends Model
{  
    protected $guarded = [];

    protected $dates = [
        'event_date'
    ];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function scopeComingEvents($query)
    {
        return $query->where('event_date', '>=', now());
    }

    public function scopePassedEvents($query)
    {
        return $query->where('event_date', '<', now());
    }

    public function scopeConfirmedEvents($query)
    {
        return $query->where('confirmed', '=', 1);
    }

    public function scopeNotYetConfirmedEvents($query)
    {
        return $query->where('confirmed', '=', 0);
    }
    
    public function setEventTimeAttribute($value){
        $this->attributes['event_time'] = Carbon::parse($value)->format('H:i');
    }
}
