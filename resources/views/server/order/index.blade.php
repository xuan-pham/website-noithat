@extends('masterLayouts/server')
@section('title', 'Danh sách đơn hàng')
@section('server')
    <form action="" class="form-inline">
        <div class="form-group">
            <input type="text" name="key" class="form-control" placeholder="tìm kiếm...">
        </div>
        <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
    </form>
    <div class="mt-4">
        <a href="{{ route('product.create') }}">Thêm mới <i class="fas fa-plus"></i></a>
    </div>
    <hr>
    @if (Session::has('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
    @if (Session::has('error'))
        <div class="alert alert-danger">
            {{ session('error') }}
        </div>
    @endif
    <table class="table text-center">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Tên khách hàng</th>
                <th scope="col">Email</th>
                <th scope="col">Số điện thoại</th>
                <th scope="col">địa chỉ</th>
                <th scope="col">Ghi chú</th>
                <th scope="col">Trạng thái</th>
                <th scope="col">Ngày tạo</th>
                <th scope="col">chức năng</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($order as $item)
                <tr>
                    <th scope="row">{{ $item->id }}</th>
                    <td>{{ $item->name }}</td>
                    <td>{{ $item->email }}</td>
                    <td>{{ $item->phone }}</td>
                    <td>{{ $item->address }}</td>
                    <td>{{ $item->note }}</td>
                    <td>
                        @if ($item->status == 0)
                            <span class="badge badge-danger">huỷ đơn hàng</span>
                        @elseif($item->status == 1)
                            <span class="badge badge-warning">đang xử lý</span>
                        @else
                            <span class="badge badge-success">hoành thành</span>
                        @endif
                    </td>
                    <td>{{ $item->created_at->format('d-m-Y') }}</td>
                    <td colspan="2">
                        <a href="{{ route('order.edit', $item->id) }}" class="btn btn-success"><i
                                class="fas fa-edit"></i></a>

                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="adminPaginate">
        {{ $order->appends(request()->all())->links() }}
    </div>
@endsection
