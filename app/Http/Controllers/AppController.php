<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Planner;

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
}
