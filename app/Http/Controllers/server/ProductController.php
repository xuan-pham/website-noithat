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
            $file_name = time() . '-' . 'product' .'.' . $ext;
            $file->move(public_path('uploads/product'), $file_name);
        }
        $request->merge(['image' => $file_name]);
        if (Product::create($request->all())) {
            return redirect()->route('product.index')->with('success','Thêm mới thành công!');
        }
    }


    public function show()
    {
        //
    }


    public function edit( $id)
    {
        $product = Product::find($id);
        $data = Category::orderBy('name', 'ASC')->select('id', 'name')->get();
        return view('server.product.edit',compact('data','product'));
    }


    public function update(updateRequest $request, $id)
    {
        dd($request->all());
    }


    public function destroy($id)
    {
        //
    }
}
