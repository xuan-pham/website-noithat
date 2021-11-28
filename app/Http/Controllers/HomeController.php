<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view('client.home.index');
    }
    public function contact()
    {
        return view('client.home.contact');
    }
    public function search()
    {
        return view('client.home.index');
    }
}
