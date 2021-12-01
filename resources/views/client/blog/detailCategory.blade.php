@extends('masterLayouts/client')
@section('title', 'blog')
@section('client')
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="{{ asset('client') }}/img/1.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>{{ $name->name }}</h2>
                        <div class="breadcrumb__option">
                            <a href="{{ route('trang-chu') }}">Home</a>
                            <span>Blog</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__item">
                            <h4>Danh mục tin tức</h4>
                            <ul>
                                @foreach ($cateBlog as $item)
                                    <li><a href="{{ route('danh-muc-tin-tuc', $item->id) }}">{{ $item->name }}
                                            <span>({{ $item->countBlog->count() }})</span></a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7">
                    <div class="row">
                        @if (count($blog) > 0)
                            @foreach ($blog as $item)
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="blog__item">
                                        <div class="blog__item__pic">
                                            <img src="{{ asset('uploads/blog') }}/{{ $item->image }}" alt="">
                                        </div>
                                        <div class="blog__item__text">
                                            <ul>
                                                <li><i
                                                        class="fa fa-calendar-o"></i>{{ $item->created_at->format('d-m-Y') }}
                                                </li>
                                            </ul>
                                            <h5><a
                                                    href="{{ route('chi-tiet-tin-tuc', $item->id) }}">{{ $item->name }}</a>
                                            </h5>
                                            <p>{{ $item->name }}</p>
                                            <a href="{{ route('chi-tiet-tin-tuc', $item->id) }}"
                                                class="blog__btn">Đọc
                                                Thêm<span class="arrow_right"></span></a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        @else
                            <div class="col-lg-6 col-md-6 col-sm-6" style="margin-left:11%">Tin tức chưa được cập nhập</div>
                        @endif
                        <div class="col-lg-12">
                            <div class="clientPaginate">
                                {{ $blog->appends(request()->all())->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
@endsection
