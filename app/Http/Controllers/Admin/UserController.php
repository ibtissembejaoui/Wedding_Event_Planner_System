<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;

class UserController extends Controller
{
    public function index()
    {
        $users=User::all()->where('admin', '=', 0);
        return view('admin/users',compact('users'));

    }
}
