<?php

namespace App\Http\Controllers\client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Cache\RateLimiting\Limit;

class ShopController extends Controller
{
    public function index()
    {
        $data = Product::orderBy('name', 'ASC')->select('id', 'name', 'price', 'image')->paginate(9);

        return view('client.shop.index', compact('data'));
    }
    public function detail($id)
    {
        $data = Product::find($id);
        $list = Product::orderBy('name', 'ASC')->select('id', 'name', 'price', 'image')->where('id_cate', $data->id_cate)->inRandomOrder()->limit(4)->get();
        return view('client.shop.detail', compact('data','list'));
    }
    public function detailCategory()
    {
        return view('client.shop.detailCategory');
    }
}
