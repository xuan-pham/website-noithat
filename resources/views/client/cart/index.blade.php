@extends('masterLayouts/client')
@section('tilte', 'Giỏ hàng')
@section('client')
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="{{ asset('client') }}/img/1.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Giỏ Hàng</h2>
                        <div class="breadcrumb__option">
                            <a href="{{ route('trang-chu') }}">Home</a>
                            <span>giỏ hàng</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <div class="cart_wall">
        <x-cart-uploads />

    </div>
    <!-- Shoping Cart Section End -->
@endsection
@section('js')
    <script>
        function cartUpdate(e) {
            e.preventDefault();
            let urlUpdate = $('.update_cart_url').data('url');
            let urlId = $(this).data('id');
            let quantity = $(this).parents('tr').find('input#quantity').val();

            $.ajax({
                type: "GET",
                url: urlUpdate,
                data: {
                    id: urlId,
                    quantity: quantity,
                },
                success: function(data) {
                    if (data.code === 200) {
                        $('.cart_wall').html(data.cart_component);
                        alert('Cập nhập thành công');
                    }
                },
                error: function() {

                }
            })
        }
        $(function() {
            $(document).on('click', '.cart_update', cartUpdate);
        })
    </script>
@endsection
