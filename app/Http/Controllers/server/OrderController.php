<?php

namespace App\Http\Controllers\server;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        
        return view('server.category.index');
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
        // $data = Category::find($id);
        return view('server.category.edit');
    }
    public function update(Request $request, $id)
    {
        // $category = Category::find($id);
        // $category->update($request->only('name', 'status'));
        // return redirect()->route('category.index')->with('success', 'Thêm mới thành công!');
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
