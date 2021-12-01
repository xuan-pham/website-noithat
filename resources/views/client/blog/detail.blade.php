@extends('masterLayouts/client')
@section('title', 'bài viết')
@section('client')
    <!-- Blog Details Hero Begin -->
    <section class="blog-details-hero set-bg" data-setbg="{{ asset('client') }}/img/1.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                        <h2>{{ $blog->name }}</h2>
                        <ul>
                            <li>Admin</li>
                            <li>{{ $blog->created_at->format('d-m-Y') }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 ">
                    <div class="blog__details__text">
                        <img src="{{ asset('uploads/blog') }}/{{ $blog->image }}" alt="">
                        <p>{{ $blog->content }}</p>
                    </div>
                    <div class="blog__details__content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="blog__details__author">
                                    <div class="blog__details__author__pic">
                                        <img src="{{ asset('client') }}/img/blog/details/details-author.jpg" alt="">
                                    </div>
                                    <div class="blog__details__author__text">
                                        <h6>Michael Scofield</h6>
                                        <span>Admin</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog__details__widget">
                                    <ul>
                                        <li><span>Danh mục tin tức:</span> {{ $blog->CategoryName->name }}</li>
                                    </ul>
                                    <div class="blog__details__social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                        <a href="#"><i class="fa fa-envelope"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    <!-- Related Blog Section Begin -->
    <section class="related-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related-blog-title">
                        <h2>Bài đăng bạn có thể thích</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($list as $item)
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="{{ asset('uploads/blog') }}/{{ $item->image }}" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> {{ $item->created_at->format('d-m-Y') }}</li>
                                </ul>
                                <h5><a href="{{ route('chi-tiet-tin-tuc',$item->id) }}">{{ $item->name }}</a></h5>
                                <p class="box-ps">{{ $item->content }}</p>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
    <!-- Related Blog Section End -->
@endsection
