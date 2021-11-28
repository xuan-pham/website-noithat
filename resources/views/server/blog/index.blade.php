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
    <a href="">Thêm mới <i class="fas fa-plus"></i></a>
</div>

<hr>
<table class="table text-center">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Tên</th>
            <th scope="col">Trạng thái</th>
            <th scope="col">Ngày tạo</th>
            <th scope="col">chức năng</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>hoạt động</td>
            <td>11/11/11</td>
            <td colspan="2">
                <a href="" class="btn btn-success"><i class="fas fa-edit"></i></a>
                &nbsp;
                &nbsp;
                &nbsp;
                &nbsp;
                <a href="" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
            </td>
        </tr>
    </tbody>
</table>
@endsection
