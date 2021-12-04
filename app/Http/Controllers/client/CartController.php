<?php

namespace App\Http\Controllers\client;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{
    public function index()
    {
        return view('client.cart.index');
    }
    public function checkout()
    {
        $cart = session()->get('cart');
        return view('client.cart.checkout', compact('cart'));
    }
    public function done(Request $request)
    {
        $total = 0;
        $idOrders = rand(1, 100);
        $request->merge(['id' => $idOrders]);
        $request->merge(['status' => 1]);
        $request->merge(['id_user' => Auth::User()->id]);
        Order::create($request->only('id','name','email','phone','address','note','status','id_user'));
        $cart = session()->get('cart');
        foreach ($cart as $item) {
            $total += $item['price'] * $item['quantity'];
        }
        $request->merge(['idOrder' => $idOrders]);
        $request->merge(['id_product' => implode(",", $request->id_detail)]);
        $request->merge(['quantity' => implode(",", $request->quantity)]);
        $request->merge(['price' => $total]);
        OrderDetail::create($request->only('idOrder', 'id_product', 'quantity', 'price'));
        session()->forget('cart');
        // $details = [
        //     'title' => 'Cảm ơn bạn đã đặt hàng',
        //     'name' => $request->name,
        //     'body' => [$request->id_detail, $total,],
        // ];
        // Mail::to($request->email)->send(new \App\Mail\SendMail($details));
        return view('client.cart.successOrder');
    }
    public function addToCart(Request $request, $id)
    {
        $product = Product::find($id);
        $cart = session()->get('cart');
        if (isset($cart[$id])) {
            $cart[$id]['quantity'] = $cart[$id]['quantity'] + 1;
        } else {
            $cart[$id] = [
                'name' => $product->name,
                'price' => $product->price,
                'image' => $product->image,
                'quantity' => 1,
            ];
        }
        session()->put('cart', $cart);
        return response()->json([
            'code' => 200,
            'message' => 'success',
        ], 200);
    }
    public function uploadsCart(Request $request)
    {
        if ($request->id && $request->quantity) {
            $carts = session()->get('cart');
            $carts[$request->id]['quantity'] = $request->quantity;
            session()->put('cart', $carts);
            $carts = session()->get('cart');
            $cartComponent = view('components.cart-uploads', compact('carts'))->render();
            return response()->json(['cart_component' => $cartComponent, 'code' => 200], 200);
        }
    }
    public function deleteCart(Request $request)
    {
        if ($request->id) {
            $carts = session()->get('cart');
            unset($carts[$request->id]);
            session()->put('cart', $carts);
            $carts = session()->get('cart');
            $cartComponent = view('components.cart-uploads', compact('carts'))->render();
            return response()->json(['cart_component' => $cartComponent, 'code' => 200], 200);
        }
    }
}
