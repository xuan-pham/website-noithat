@extends('masterLayouts/client')
@section('tilte', '')
@section('client')
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="{{ asset('client') }}/img/1.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Thanh toán</h2>
                        <div class="breadcrumb__option">
                            <a href="{{ route('trang-chu') }}">Trang chủ</a>
                            <span>thanh toán</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <?php
    $total = 0;
    ?>
    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">

            <div class="checkout__form">
                <h4>Thông tin đặt hàng</h4>
                <form action="{{ route('thanh-toan') }}" method="POST">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="checkout__input">
                                        <p>Họ và tên<span>*</span></p>
                                        <input type="text" name="name" placeholder="họ và tên....">
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <p>Địa chỉ<span>*</span></p>
                                <input type="text" placeholder="địa chỉ..." class="checkout__input__add" name="address">
                            </div>

                            <div class="checkout__input">
                                <p>Số điện thoại<span>*</span></p>
                                <input type="text" name="phone" placeholder="số điện thoại...">
                            </div>

                            <div class="checkout__input">
                                <p>Email<span>*</span></p>
                                <input type="text" name="email" placeholder="địa chỉ email...">
                            </div>

                            <div class="checkout__input">
                                <p>Ghi chú<span>*</span></p>
                                <input type="text" placeholder="Ghi chú yêu cầu....">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="checkout__order">
                                <h4>Đơn hàng của bạn </h4>
                                <div class="checkout__order__products">Sản phẩm <span>Tổng tiền</span></div>
                                <ul>
                                    @foreach ($cart as $id => $item)
                                        <?php
                                        $total += $item['price'] * $item['quantity'];
                                        ?>
                                        <li>{{ $item['name'] }}<span>{{ number_format($item['price']) }}
                                                $ </span></li>
                                        <li><input type="text" name="id_detail[]" hidden value="{{ $id }}">
                                            <input type="text" name="quantity[]" hidden value="{{ $item['quantity'] }}">
                                            {{-- <input type="text" name="name[]" hidden value="{{ $item['name'] }}"> --}}
                                        </li>
                                    @endforeach
                                </ul>
                                <div class="checkout__order__subtotal">Tạm tính <span>{{ number_format($total) }} $</span>
                                </div>
                                <div class="checkout__order__total">Tổng tiền
                                    <span>{{ number_format($total) }} $</span>
                                </div>

                                {{-- <div class="checkout__input__checkbox">
                                    <label for="payment">
                                        Check Payment
                                        <input type="checkbox" id="payment">
                                        <span class="checkmark"></span>
                                    </label>s
                                </div>
                                <div class="checkout__input__checkbox">
                                    <label for="paypal">
                                        Paypal
                                        <input type="checkbox" id="paypal">
                                        <span class="checkmark"></span>
                                    </label>
                                </div> --}}
                                <button type="submit" class="site-btn">Hoành thành</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
@endsection
