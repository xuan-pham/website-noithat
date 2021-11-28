@extends('masterLayouts/server')
@section('title', 'Danh sách danh mục tin tức')
@section('server')
    <form action="" class="form-inline">
        <div class="form-group">
            <input type="text" name="key" class="form-control" placeholder="tìm kiếm...">
        </div>
        <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
    </form>
    <div class="mt-4">
        <a href="{{ route('list.create') }}">Thêm mới <i class="fas fa-plus"></i></a>
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
                <th scope="col">Tên</th>
                <th scope="col">Số lượng</th>
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
                    <td>{{ $item->countBlog->count() }}</td>
                    <td>@if ($item->status == 0)
                        <span class="badge badge-danger">riêng tư</span>
                    @else
                        <span class="badge badge-success">hoạt động</span>
                    @endif
                </td>
                    <td>{{ $item->created_at->format('d-m-Y') }}</td>
                    <td colspan="2">
                        <a href="{{ route('list.edit',$item->id) }}" class="btn btn-success"><i class="fas fa-edit"></i></a>
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        <a href="{{ route('list.destroy',$item->id) }}" class="btn btn-danger btnDelete"><i class="fas fa-trash-alt"></i></a>
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
