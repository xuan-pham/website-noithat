@extends('masterLayouts/server')
@section('title', '')
@section('server')
    <form action="{{ route('category.update', $data->id) }}" method="post">
        {{ csrf_field() }}
        @method('PUT')
        <div class="form-group">
            <label for="">Tên danh mục</label>
            <input type="text" name="name" value="{{ $data->name }}" class="form-control" placeholder="Tên danh mục...">
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
        <a href="{{ route('category.index') }}" class="btn btn-primary mr-4"><i class="fas fa-undo"></i> Quay về danh sách</a>

        <button type="submit" class="btn btn-success ml-2">Sửa <i class="fas fa-check-circle"></i></button>
    </form>
@endsection
