<?php

namespace App\Http\Controllers\Admin;

use App\Event;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class EventContoller extends Controller
{
    public function todayEvent()
    {
    $todayevents = Event::where('event_date',date('Y-m-d'))->orderBy('event_time')->with('user')->get();
    return view('admin/events.todayEvent',compact('todayevents'));
    }

    public function comingEvent()
    {
    $comingevents = Event::where('event_date','>',date('Y-m-d'))->orderBy('event_time')->with('user')->get();
    return view('admin/events.comingEvent',compact('comingevents'));
    }

    public function passedEvent()
    {
    $passedevents = Event::where('event_date','<',date('Y-m-d'))->orderBy('event_time')->with('user')->get();
    return view('admin/events.passedEvent',compact('passedevents'));
    }
}
