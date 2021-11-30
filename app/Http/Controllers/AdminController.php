<?php

namespace App\Http\Controllers;

use GuzzleHttp\Middleware;
use Illuminate\Http\Request;

class AdminController extends Controller
{
   public function __construct()
    {
        $this->middleware('auth');
    }
   
    public function index()
    {
        return view('server.dashboard');
    }
    
}
