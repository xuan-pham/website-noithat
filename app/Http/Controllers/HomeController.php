<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\Category;
use App\Models\Product;

class HomeController extends Controller
{

    public function index()
    {
        $product = Product::all()->random(8);
        $blog = Blog::all()->random(3);
        $category = Category::orderBy('name','ASC')->select('id','name')->get();
        return view('client.home.index',compact('product','blog','category'));
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
