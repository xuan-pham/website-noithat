@extends('masterLayouts/client')
@section('title', 'cửa hàng')
@section('client')
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="{{ asset('client') }}/img/1.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>{{ $name->name }}</h2>
                        <div class="breadcrumb__option">
                            <a href="{{ route('trang-chu') }}">Trang chủ</a>
                            <span>danh mục sản phẩm</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>Danh mục</h4>
                            <ul>
                                @foreach ($category as $item)
                                    <li><a href="{{ route('danh-muc-san-pham', $item->id) }}">{{ $item->name }} <span
                                                style="color: brown">({{ $item->countProducts->count() }})</span></a>

                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-7">
                    <div class="row">
                        @if (count($product) > 0)
                            @foreach ($product as $item)
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pics set-bg"
                                            data-setbg="{{ asset('uploads/product') }}/{{ $item->image }}">
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__item__text">
                                            <h6><a href="{{ route('chi-tiet-san-pham',$item->id) }}">{{ $item->name }}</a></h6>
                                            <h5>{{ number_format($item->price) }} $</h5>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        @else
                            <div class="col-lg-4 col-md-6 col-sm-6 " style="margin-left:17%">Danh mục chưa cập nhập sản phẩm</div>
                        @endif
                    </div>
                    <div class="clientPaginate">
                        {{ $product->appends(request()->all())->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->
@endsection
