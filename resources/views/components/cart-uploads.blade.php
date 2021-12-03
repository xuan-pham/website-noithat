<?php
$total = 0;
?>
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__table">
                    <table class="update_cart_url" data-url={{ route('cap-nhap-gio-hang') }}>
                        <thead>
                            <tr>
                                <th class="shoping__product">Sản phẩm</th>
                                <th>Tên</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Tổng</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>

                        <tbody>
                            @if ($carts > 0)
                                @foreach ($carts as $id => $item)
                                    <?php
                                    $total += $item['price'] * $item['quantity'];
                                    ?>
                                    <tr>
                                        <td class="shoping__cart__item">
                                            <img src="{{ asset('uploads/product') }}/{{ $item['image'] }}" alt="">
                                        </td>
                                        <td>
                                            <h5>{{ $item['name'] }}</h5>
                                        </td>
                                        <td class="shoping__cart__price">
                                            {{ number_format($item['price']) }} $
                                        </td>
                                        <td class="shoping__cart__quantity">
                                            <div class="quantity">
                                                <div class="pro-qty">
                                                    <input type="text" id="quantity" value="{{ $item['quantity'] }}">
                                                </div>
                                            </div>
                                        </td>
                                        <td class="shoping__cart__total">
                                            {{ number_format($item['price'] * $item['quantity']) }} $
                                        </td>
                                        <td>
                                            <span data-id="{{ $id}}" class="btn btn-success cart_update">save</span>
                                        </td>
                                        <td class="shoping__cart__item__close">
                                            <span class="icon_close"></span>
                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <th colspan="5">
                                        <p class="text-cart text-center mt-4" style="color: red">Giỏ hàng đang
                                            trống,
                                            vào mua hàng ngay</p>
                                    </th>
                                </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
                    <a href="{{ route('cua-hang') }}" class="primary-btn cart-btn">Tiếp tục mua sắm</a>
                    {{-- <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                    Upadate Cart</a> --}}
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__continue">
                    {{-- <div class="shoping__discount">
                    <h5>Discount Codes</h5>
                    <form action="#">
                        <input type="text" placeholder="Enter your coupon code">
                        <button type="submit" class="site-btn">APPLY COUPON</button>
                    </form>
                </div> --}}
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__checkout">
                    <h5>Tổng giỏ hàng</h5>
                    <ul>
                        <li>Tạm tính <span>{{ number_format($total) }} $</span></li>
                        <li>Tổng Tiền <span>{{ number_format($total) }} $</span></li>
                    </ul>
                    <a href="#" class="primary-btn">Thanh Toán</a>
                </div>
            </div>
        </div>
    </div>
</section>
