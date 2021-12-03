<?php

namespace App\View\Components;

use Illuminate\View\Component;

class cartUploads extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        $carts = session()->get('cart');
        return view('components.cart-uploads',compact('carts'));
    }
}
