@extends('masterLayouts/server')
@section('title', 'Thay đổi thông tin')
@section('server')
    <form action="{{ route('list.update',$data->id) }}" method="post">
        {{ csrf_field() }}
        <div class="form-group">
            <label for="">Tên danh mục</label>
            <input type="text" name="name" id="" value="{{ $data->name }}" class="form-control" placeholder="Tên danh mục...">
            @error('name')
                <small class="help-block ml-2 text-danger">{{ $message }}</small>
            @enderror
        </div>
        <div class="form-group">
            <label for=""> Trạng thái</label>
            <br>
            <input type="radio" class="ml-4" value="1" name="status" checked> Hoạt động
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            <input type="radio" value="0" name="status"> Riêng tư
        </div>
        <input type="text" hidden name="status" value="1">
        <a href="{{ route('list.index') }}" class="btn btn-primary mr-4"><i class="fas fa-undo"></i> Quay về danh
            sách</a>

        <button type="submit" class="btn btn-success ml-2">Sửa <i class="fas fa-check-circle"></i></button>
    </form>
@endsection
