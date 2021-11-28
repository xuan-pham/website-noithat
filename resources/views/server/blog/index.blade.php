@extends('masterLayouts/server')
@section('title', 'Danh sách tin tức')
@section('server')
    <form action="" class="form-inline">
        <div class="form-group">
            <input type="text" name="key" class="form-control" placeholder="tìm kiếm...">
        </div>
        <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
    </form>
    <div class="mt-4">
        <a href="{{ route('blog.create') }}">Thêm mới <i class="fas fa-plus"></i></a>
    </div>

    <hr>
    <table class="table text-center">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Tiêu đề</th>
                <th scope="col">Hình ảnh</th>
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
                    <td>{{ $item->image }}</td> 
                    <td>{{ $item->CategoryName->name}}</td>
                    <td>
                        @if ($item->status == 0)
                            <span class="badge badge-danger">riêng tư</span>
                        @else
                            <span class="badge badge-success">hoạt động</span>
                        @endif
                    </td>
                    <td>{{ $item->created_at->format('d-m-Y') }}</td>
                    <td colspan="2">
                        <a href="{{ route('blog.edit',$item->id) }}" class="btn btn-success"><i class="fas fa-edit"></i></a>
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        <a href="{{ route('blog.destroy',$item->id) }}" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
