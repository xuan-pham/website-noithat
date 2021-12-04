<?php

namespace App\Http\Controllers\server;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\changepw\updateRequest;
class ChangePwController extends Controller
{
    public function __construct()
    {
        $this->middleware('check-url-account');
        $this->middleware('auth');
    }

    public function edit($id)
    {
        $changepw = User::find($id);
        return view('server.changepw.edit', compact('changepw'));
    }
    public function update(updateRequest $request, $id)
    {
        $changepw = User::find($id);
        if (Hash::check($request->pw_old, $changepw->password)) {
            $password = bcrypt($request->pw_new);
            $request->merge(['password' => $password]);
            $changepw->update($request->only('password'));

            Auth::logout();

            $request->session()->invalidate();

            $request->session()->regenerateToken();

            return redirect('/login')->with('success', 'thay đổi mật khẩu thành công');
        } else {
            return back()->with('error', 'Mật khẩu không đúng');
        }
    }
}
