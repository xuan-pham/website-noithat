<?php

namespace App\Http\Controllers\server;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;

class OrderController extends Controller
{
    function __construct()
    {
        $this->middleware('check-url-account');
        $this->middleware('auth');
    }
    public function index()
    {
        $order = Order::search()->paginate(5);
        
        return view('server.order.index', compact('order'));
    }
    public function create()
    {
        return view('server.category.create');
    }

    public function edit($id)
    {
        $list = Order::find($id);
        $orderdetail = OrderDetail::where('idOrder', $id)->get();
        foreach ($orderdetail as $item) {
            $total = $item->price;
        }
        $dataPro = explode(',', $item->id_product);
        $dataQuan = explode(',',  $item->quantity);
        $nameProduct = Product::find($dataPro);
        return view('server.order.edit', compact('total', 'nameProduct', 'dataQuan', 'list'));
    }
    public function update(Request $request, $id)
    {
        $order = Order::find($id);

        $order->update($request->only('status'));
        return redirect()->route('order.index')->with('success', 'Cập nhập thành công!');
    }
    
}
