<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>

    <link rel="stylesheet" href="{{ asset('client') }}/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="{{ asset('client') }}/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="{{ asset('client') }}/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="{{ asset('client') }}/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="{{ asset('client') }}/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="{{ asset('client') }}/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="{{ asset('client') }}/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="{{ asset('client') }}/css/style.css" type="text/css">
    @yield('css')
    {{-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> --}}
</head>

<body>

    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="{{ route('trang-chu') }}"><img src="{{ asset('client') }}/img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="{{ route('gio-hang') }}"><i class="fa fa-shopping-bag"></i> <span>0</span></a></li>
            </ul>
            <div class="header__cart__price">Tổng: <span>$0</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="{{ asset('client') }}/img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>

            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="{{ route('trang-chu') }}">Trang chủ</a></li>
                <li><a href="{{ route('cua-hang') }}">Cửa hàng</a></li>
                <li><a href="{{ route('tin-tuc') }}">Blog</a></li>
                <li><a href="{{ route('lien-he') }}">Liên hệ</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> ducpxps14375@fpt.edu.vn</li>

            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> ducpxps14375@fpt.edu.vn</li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>

                            <div class="header__top__right__auth">

                                @guest
                                    <div class="row">
                                        <div class="col-4">
                                            @if (Route::has('login'))
                                                <a class="nav-link"
                                                    href="{{ route('login') }}">{{ __('Login') }}</a>
                                            @endif
                                        </div>
                                        <div class="col-4">
                                            @if (Route::has('register'))
                                                <a class="nav-link"
                                                    href="{{ route('register') }}">{{ __('Register') }}</a>
                                            @endif
                                        </div>
                                    </div>

                                @else
                                    <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button"
                                            id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                            {{ Auth::user()->name }}
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                            <li> <a class="dropdown-item" href="{{ route('logout') }}"
                                                    onclick="event.preventDefault();
                                                                                                                document.getElementById('logout-form').submit();">
                                                    {{ __('Logout') }}
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                        class="d-none">
                                        @csrf
                                    </form>
                                @endguest
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="{{ route('trang-chu') }}"><img src="{{ asset('client') }}/img/logo.png"
                                alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="{{ route('trang-chu') }}">Trang chủ</a></li>
                            <li><a href="{{ route('cua-hang') }}">Cửa hàng</a></li>
                            <li><a href="{{ route('tin-tuc') }}">Blog</a></li>
                            <li><a href="{{ route('lien-he') }}">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="{{ route('gio-hang') }}"><i class="fa fa-shopping-bag"></i>
                                    <span></span></a></li>
                        </ul>
                        <div class="header__cart__price">Tổng: <span>$0</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <x-CategoryPr />
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="{{ route('tim-kiem') }}" method="get">
                                <div class="hero__search__categories">
                                    Tìm kiếm
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" name="search" placeholder="Tìm kiếm sản phẩm bạn đang cần?">
                                {{-- <button type="submit" class="site-btn">SEARCH</button> --}}
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>(+84)0332220298</h5>
                                <span>Hỗ trợ miễn phí 27/7</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    @yield('client')

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="{{ asset('client') }}/img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 117, nguyen thi kieu, Q12</li>
                            <li>Phone: 0332220298</li>
                            <li>Email: ducpxps1349@fpt.edu.vn</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>

    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="{{ asset('client') }}/js/jquery-3.3.1.min.js"></script>
    <script src="{{ asset('client') }}/js/bootstrap.min.js"></script>
    <script src="{{ asset('client') }}/js/jquery.nice-select.min.js"></script>
    <script src="{{ asset('client') }}/js/jquery-ui.min.js"></script>
    <script src="{{ asset('client') }}/js/jquery.slicknav.js"></script>
    <script src="{{ asset('client') }}/js/mixitup.min.js"></script>
    <script src="{{ asset('client') }}/js/owl.carousel.min.js"></script>
    <script src="{{ asset('client') }}/js/main.js"></script>
    <script src="{{ asset('client') }}/js/cart-js.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

    <!-- CSS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />
    <!-- Semantic UI theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css" />
    <!-- Bootstrap theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css" />
    <!-- Shoping Cart Section End -->
    @yield('js')
</body>

</html>
