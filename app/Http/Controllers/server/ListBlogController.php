<?php

namespace App\Http\Controllers\server;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CategoryBlog;

class ListBlogController extends Controller
{
    public function __construct()
    {
        $this->middleware('check-url-account');
        $this->middleware('auth');
    }
    public function index()
    {
        $data = CategoryBlog::search()->paginate(5);
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
        $category = CategoryBlog::find($id);
        $category->update($request->only('name', 'status'));
        return redirect()->route('list.index')->with('success', 'Thêm mới thành công!');
    }
    public function destroy($id)
    {
        $category = CategoryBlog::find($id);
        if ($category->countBlog->count() > 0) {
            return redirect()->route('list.index')->with('error', 'Không thể xoá danh mục có tin tức!');
        } else {
            $category->delete();
            return redirect()->route('list.index')->with('success', 'Xoá thành công!');
        }
    }
}
