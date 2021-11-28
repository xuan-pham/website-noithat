<?php

namespace App\Http\Controllers\client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BlogsController extends Controller
{
    public function index()
    {
        return view('client.blog.index');
    }
    public function detail()
    {
        return view('client.blog.detail');
    }
    public function detailCategory()
    {
        return view('client.blog.detailCategory');
    }
}
