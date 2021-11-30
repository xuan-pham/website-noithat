<?php

namespace App\Http\Controllers\server;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderDetail;

class OrderController extends Controller
{
    function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $order = Order::paginate(5);
        // dd($order);
        return view('server.order.index', compact('order'));
    }
    public function create()
    {
        return view('server.category.create');
    }
    public function store(Request $request)
    {
        // return redirect()->route('category')->with('success', 'Thêm thành công!');
    }
    public function edit($id)
    {
        $list = Order::find($id);
        $orderdetail = OrderDetail::where('idOrder', $id)->get();
        return view('server.order.edit', compact('orderdetail','list'));
    }
    public function update(Request $request, $id)
    {
        $order = Order::find($id);
        $order->update($request->only('status'));
        return redirect()->route('order.index')->with('success', 'Cập nhập thành công!');
    }
    public function destroy($id)
    {
        // $category = Category::find($id);
        // if ($category->countProducts->count() > 0) {
        //     return redirect()->route('category.index')->with('error', 'Không thể xoá danh mục có sản phẩm!');
        // } else {
        //     $category->delete();
        //     return redirect()->route('category.index')->with('success', 'Xoá thành công!');
        // }
    }
}
