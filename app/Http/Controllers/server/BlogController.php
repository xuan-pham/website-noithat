<?php

namespace App\Http\Controllers\server;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\CategoryBlog;

class BlogController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $data = Blog::search()->paginate(5);
        return view('server.blog.index', compact('data'));
    }
    public function create()
    {
        $data = CategoryBlog::orderBy('name', 'ASC')->select('id', 'name')->get();
        return view('server.blog.create', compact('data'));
    }
    public function store(Request $request)
    {
        if ($request->has('file_image')) {
            $file = $request->file_image;
            $ext = $request->file_image->extension();
            $file_name = time() . '-' . 'blog' . '.' . $ext;
            $file->move(public_path('uploads/blog'), $file_name);
        }
        $request->merge(['image' => $file_name]);
        Blog::create($request->all());
        return redirect()->route('blog.index')->with('success', 'Thêm thành công!');
    }
    public function edit(Request $request, $id)
    {
        $data = Blog::find($id);
        $list = CategoryBlog::orderBy('name', 'ASC')->select('id', 'name')->get();
        return view('server.blog.edit', compact('data', 'list'));
    }
    public function update(Request $request, $id)
    {
        $blog = Blog::find($id);
        if ($request->has('file_image')) {
            unlink('uploads/blog/' . $blog->image);
            $file = $request->file_image;
            $ext = $request->file_image->extension();
            $file_name = time() . '-' . 'blog' . '.' . $ext;
            $file->move(public_path('uploads/blog'), $file_name);
            $request->merge(['image' => $file_name]);
            $blog->update($request->all());
            return redirect()->route('blog.index')->with('success', 'Thêm mới thành công!');
        } else {
            $file_name = $blog->image;
            $request->merge(['image' => $file_name]);
            $blog->update($request->all());
            return redirect()->route('blog.index')->with('success', 'Thêm mới thành công!');
        }
    }
    public function destroy($id)
    {
        $blog = Blog::find($id);
        $blog->delete();
        return redirect()->route('blog.index')->with('success', 'Xoá thành công!');
    }
}
