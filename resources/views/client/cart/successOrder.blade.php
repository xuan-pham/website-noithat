@section('css')
    <style>
        p.text-center {
            height: 372px;
            margin-top: 7%;
            color: darkred;
        }

    </style>

@endsection
@extends('masterLayouts/client')
@section('tilte', 'Giỏ hàng')
@section('client')
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="{{ asset('client') }}/img/1.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Đặt hàng thành công</h2>
                        <div class="breadcrumb__option">
                            <a href="{{ route('trang-chu') }}">trang chủ</a>
                            <span>đặt hàng thành công</span>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <div class="cart_wall">
        <p class="text-center" style="font-size: 50px">cảm ơn bạn đã mua hàng, hẹn gặp lại lần sau</p>
    </div>
@endsection
