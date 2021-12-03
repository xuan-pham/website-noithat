<?php

namespace App\Http\Controllers\client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Product;

class CartController extends Controller
{
    public function index()
    {
        return view('client.cart.index');
    }
    public function checkout()
    {
        return view('client.cart.checkout');
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
            return response()->json(['cart_component' => $cartComponent,'code'=>200], 200);
        }
    }
}
