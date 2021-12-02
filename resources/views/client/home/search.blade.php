@extends('masterLayouts/client')
@section('title', 'Tìm kiếm')
@section('client')
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="{{ asset('client') }}/img/1.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Tình kiếm</h2>
                        <div class="breadcrumb__option">
                            <a href="{{ route('trang-chu') }}">Trang chủ</a>
                            <span>tìm kiếm</span>
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
                <div class="col-lg-12 col-md-12">
                    @if ($query === null)
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <p class="text-center" style="height: 400px">Không có sản phẩm tìm kiếm</p>
                            </div>
                        </div>
                    @else
                        <div class="row">
                            @foreach ($query as $item)
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pic set-bg"
                                            data-setbg="{{ asset('uploads/product') }}/{{ $item->image }}">
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__item__text">
                                            <h6><a
                                                    href="{{ route('chi-tiet-san-pham', $item->id) }}">{{ $item->name }}</a>
                                            </h6>
                                            <h5>{{ number_format($item->price) }} $</h5>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <div class="clientPaginate">
                            {{ $query->appends(request()->all())->links() }}
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->
@endsection
