<?php

namespace App\Http\Controllers\client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\Category;
use App\Models\CategoryBlog;

class BlogsController extends Controller
{
    public function index()
    {
        $categoryBlog = CategoryBlog::orderBy('name', 'ASC')->select('id', 'name')->get();
        $blog = Blog::paginate(4);
        return view('client.blog.index', compact('blog', 'categoryBlog'));
    }
    public function detail($id)
    {
        $blog = Blog::find($id);
        $list = Blog::all()->where('id_blog', $blog->id_blog)->random(3);
        return view('client.blog.detail', compact('blog', 'list'));
    }
    public function detailCategory($id)
    {
        $name = CategoryBlog::find($id);
        $cateBlog = CategoryBlog::all();
        $blog = Blog::where('id_blog', $id)->paginate(4);
        return view('client.blog.detailCategory', compact('cateBlog', 'blog', 'name'));
    }
}
