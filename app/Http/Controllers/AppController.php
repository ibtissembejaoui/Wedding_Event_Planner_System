<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AppController extends Controller
{
    public function index()
    {
        return view('welcome');
    }

    public function home()
    {
        return view('home');
    }

    public function confirmed()
    {
        $confirmedEvents = Auth::user()->events()->confirmedEvents()->orderBy('event_date')->get();
        $notyetconfirmedEvents = Auth::user()->events()->notyetconfirmedEvents()->orderBy('event_date', 'desc')->get();
        return view('event.confirmed', [
            'confirmedEvents' => $confirmedEvents,
            'notyetconfirmedEvents' => $notyetconfirmedEvents
        ]);
    }
}