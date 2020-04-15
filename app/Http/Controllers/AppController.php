<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Member;
use App\Package;

class AppController extends Controller
{
    public function index()
    {
        $packages=Package::all();
        return view('welcome',compact('packages'));
    }
    public function home()
    {
        return view('home');
    }

   
}
