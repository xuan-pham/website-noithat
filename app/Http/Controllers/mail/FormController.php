<?php

namespace App\Http\Controllers\mail;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMail;
use App\Http\Requests\ContactRequest;

class FormController extends Controller
{
    public function addFeedback(ContactRequest $request)
    {
        $details = [
            'title' => 'Xin chào khách hàng',
            'name' => $request->name,
            'body' => $request->text,
        ];
        Mail::to($request->email)->send(new \App\Mail\SendMail($details));
        return view('client.home.contact')->with('success', 'Gửi mail thành công');
    }
}
