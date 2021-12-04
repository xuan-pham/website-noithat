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
        success: function (data) {
            if (data.code === 200) {
                $('.cart_wall').html(data.cart_component);
                alertify.success('Cập nhập giỏ hàng thành công');
            }
        },
        error: function () {

        }
    })
};
function cartDelete(e) {
    e.preventDefault();
    let urlDelete = $('.shoping__cart__table').data('url');
    let urlId = $(this).data('id');
    $.ajax({
        type: "GET",
        url: urlDelete,
        data: {
            id: urlId,
        },
        success: function (data) {
            if (data.code === 200) {
                $('.cart_wall').html(data.cart_component);
                alertify.error('Xoá thành công');
            }
        },
        error: function () {

        }
    })
}
$(function () {
    $(document).on('click', '.cart_update', cartUpdate);
    $(document).on('click', '.cart_delete', cartDelete);
})