<?php

namespace App\Http\Controllers\server;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CategoryBlog;
class ListBlogController extends Controller
{
    public function index()
    {
        $data = CategoryBlog::orderBy('name', 'ASC')->select('id', 'name', 'status', 'created_at')->search()->paginate(5);
        return view('server.listBlog.index', compact('data'));
    }
    public function create()
    {
        return view('server.listBlog.create');
    }
    public function store(Request $request)
    {
        CategoryBlog::create($request->all());
        return redirect()->route('list.index')->with('success', 'Thêm thành công!');
    }
    public function edit($id)
    {
      $data = CategoryBlog::find($id);
        return view('server.listBlog.edit', compact('data'));
    }
    public function update(Request $request, $id)
    {
        // $category = Category::find($id);
        // $category->update($request->only('name', 'status'));
        // return redirect()->route('list.index')->with('success', 'Thêm mới thành công!');
    }
    public function destroy($id)
    {
        // $category = Category::find($id);
        // if ($category->countProducts->count() > 0) {
        //     return redirect()->route('list.index')->with('error', 'Không thể xoá danh mục có sản phẩm!');
        // } else {
        //     $category->delete();
        //     return redirect()->route('list.index')->with('success', 'Xoá thành công!');
        // }
    }
}
