@extends('masterLayouts/server')
@section('title','Chi tiết đơn hàng')
@section('server')
    <table class="table text-center">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">ID Đơn hàng</th>
                <th scope="col">ID Sản phẩm</th>
                <th scope="col">Số lượng</th>
                <th scope="col">Tiền</th>
                <th scope="col">Trạng thái</th>
                <th scope="col">Ngày tạo</th>
                <th scope="col">chức năng</th>
            </tr>
        </thead>
        <tbody>

            @foreach ($orderdetail as $item)
                <form action="{{ route('order.update', $item->id) }}" method="post">
                    {{ csrf_field() }}
                    @method('PUT')
                    <tr>
                        <th scope="row">{{ $item->id }}</th>
                        <td>{{ $item->idOrder }}</td>
                        <td>{{ $item->id_product }}</td>
                        <td>{{ $item->quantity }}</td>
                        <td>{{ number_format($item->price) }} $</td>
                        <td>
                            <select name="status">
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
                        </td>
                        <td>{{ $item->created_at->format('d-m-Y') }}</td>
                        <td colspan="2">
                            <button type="submit" class="btn btn-success btnUpdate"><i class="fas fa-check"></i></button>
                        </td>
                    </tr>
                </form>
            @endforeach
        </tbody>
    </table>
@endsection
