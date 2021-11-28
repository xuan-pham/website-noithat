<?php

namespace App\Http\Controllers\server;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ChangePwController extends Controller
{
   
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
    
}
