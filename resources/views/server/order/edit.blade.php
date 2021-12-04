@extends('masterLayouts/server')
@section('title', 'Chi tiết đơn hàng')
@section('server')

    <div class="number-order">
        <h3 style="color: brown">ID Đơn Hàng : {{ $list->id }} </h3>
        <span>ngày tạo:
            {{ $list->created_at->format('d-m-Y') }}
        </span>
    </div>
    <table class="table text-center">
        <thead>
            <tr>
                <th scope="col">ID Sản phẩm</th>
                <th scope="col">hình ảnh</th>
                <th scope="col">Số lượng</th>
                <th scope="col">Giá Tiền</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($nameProduct as $item)
                <tr>
                    <td>{{ $item->name }}</td>
                    <td style="width: 50%"><img class="image-product-order" style="width: 20%"
                            src="{{ asset('uploads/product') }}/{{ $item->image }}" alt=""></td>
                    <td>
                        <?php
                        foreach ($dataQuan as $key => $index) {
                            $index;
                        }
                        echo $index;
                        ?>
                    </td>
                    <td>{{ number_format($item->price) }} $</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <hr>
    <div class="total-price">
        <h3 style="color: red">Tổng Tiền: {{ number_format($total) }} $</h3>
    </div>
    <div class="mt-4">
        <form action="{{ route('order.update', $list->id) }}" method="post">
            {{ csrf_field() }}
            @method('PUT')
            <label for="">Trạng thái xử lý đơn hàng : </label> &nbsp;
            <select name="status" class="form-control mb-2" style="width:10%">
                <option value="{{ $list->status }}">
                    @if ($list->status == 0)
                        <span class="badge badge-danger">huỷ đơn hàng</span>
                    @elseif($list->status == 1)
                        <span class="badge badge-danger">đang xử lý</span>
                    @else
                        <span class="badge badge-danger">hoành thành</span>
                    @endif
                </option>
                <option>---hành động xử lý---</option>
                <option value="2"><span class="badge badge-danger">hoành thành</span></option>
                <option value="1"><span class="badge badge-success">đang xử lý</span></option>
                <option value="0"><span class="badge badge-warning">huỷ đơn hàng</span></option>
            </select>
            <button type="submit" class="btn btn-success btnUpdate">Cập nhập trạng thái</button>
        </form>

    </div>

@endsection
