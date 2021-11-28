@extends('masterLayouts/server')
@section('title', '')
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
                <th scope="col">Tên sản phẩm</th>
                <th scope="col">Hình ảnh</th>
                <th scope="col">Giá</th>
                <th scope="col">Số lượng</th>
                <th scope="col">Danh mục</th>
                <th scope="col">Trạng thái</th>
                <th scope="col">Ngày tạo</th>
                <th scope="col">chức năng</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $item)
                <tr>
                    <th scope="row">{{ $item->id }}</th>
                    <td>{{ $item->name }}</td>
                    <td style="width: 200px"><img src="{{ asset('uploads/product') }}/{{ $item->image }}" alt=""
                            class="image-product"></td>
                    <td>{{ number_format($item->price) }} $</td>
                    <td>{{ $item->quantity }}</td>
                    <td>{{ $item->CategoryName->name }}</td>
                    <td>
                        @if ($item->status == 0)
                            <span class="badge badge-danger">riêng tư</span>
                        @else
                            <span class="badge badge-success">hoạt động</span>
                        @endif
                    </td>
                    <td>{{ $item->created_at->format('d-m-Y') }}</td>
                    <td colspan="2">
                        <a href="{{ route('product.edit', $item->id) }}" class="btn btn-success"><i
                                class="fas fa-edit"></i></a>
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        <a href="{{ route('product.destroy', $item->id) }}" class="btn btn-danger btnDelete"><i
                                class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <form action="" method="post" id="formDelete">
        {{ csrf_field() }}
        @method('DELETE')
    </form>
    <div class="adminPaginate">
        {{ $data->appends(request()->all())->links() }}
    </div>
@endsection
