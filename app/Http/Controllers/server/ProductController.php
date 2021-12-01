<?php

namespace App\Http\Controllers\server;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Requests\product\storeRequest;
use App\Http\Requests\product\updateRequest;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('check-url-account');
        $this->middleware('auth');
    }
    public function index()
    {
        $data = Product::search()->paginate(5);
        return view('server.product.index', compact('data'));
    }


    public function create()

    {
        $data = Category::orderBy('name', 'ASC')->select('id', 'name')->get();
        return view('server.product.create', compact('data'));
    }


    public function store(storeRequest $request)
    {
        if ($request->has('file_image')) {
            $file = $request->file_image;
            $ext = $request->file_image->extension();
            $file_name = time() . '-' . 'product' . '.' . $ext;
            $file->move(public_path('uploads/product'), $file_name);
        }
        $request->merge(['image' => $file_name]);
        if (Product::create($request->all())) {
            return redirect()->route('product.index')->with('success', 'Thêm mới thành công!');
        }
    }

    public function edit($id)
    {
        $product = Product::find($id);
        $data = Category::orderBy('name', 'ASC')->select('id', 'name')->get();
        return view('server.product.edit', compact('data', 'product'));
    }


    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        if ($request->has('file_image')) {
            unlink('uploads/product/' . $product->image);
            $file = $request->file_image;
            $ext = $request->file_image->extension();
            $file_name = time() . '-' . 'product' . '.' . $ext;
            $file->move(public_path('uploads/product'), $file_name);
            $request->merge(['image' => $file_name]);
            $product->update($request->all());
            return redirect()->route('product.index')->with('success', 'Thay đổi thành công!');
        } else {
            $file_name = $product->image;
            $request->merge(['image' => $file_name]);
            $product->update($request->all());
            return redirect()->route('product.index')->with('success', 'Thay đổi thành công!');
        }
    }


    public function destroy($id)
    {
        $product = Product::find($id);
        $product->delete();
        return redirect()->route('product.index')->with('success', 'Xoá thành công!');
    }
}
