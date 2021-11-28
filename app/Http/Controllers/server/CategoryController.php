<?php

namespace App\Http\Controllers\server;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Http\Requests\category\StoreRequest;
use App\Http\Requests\category\updateRequest;

class CategoryController extends Controller
{
    public function index()
    {
        $data = Category::search()->paginate(5);
        return view('server.category.index', compact('data'));
    }
    public function create()
    {
        return view('server.category.create');
    }
    public function store(StoreRequest $request)
    {
        Category::create($request->all());
        return redirect()->route('category')->with('success', 'Thêm thành công!');
    }
    public function edit($id)
    {
        $data = Category::find($id);
        return view('server.category.edit', compact('data'));
    }
    public function update(updateRequest $request, $id)
    {
        $category = Category::find($id);
        $category->update($request->only('name', 'status'));
        return redirect()->route('category.index')->with('success', 'Thêm mới thành công!');
    }
    public function destroy($id)
    {
        $category = Category::find($id);
        if ($category->countProducts->count() > 0) {
            return redirect()->route('category.index')->with('error', 'Không thể xoá danh mục có sản phẩm!');
        } else {
            $category->delete();
            return redirect()->route('category.index')->with('success', 'Xoá thành công!');
        }
    }
}
