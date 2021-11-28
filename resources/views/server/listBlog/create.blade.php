@extends('masterLayouts/server')
@section('title', 'Thêm mới danh mục tin tức')
@section('server')
    <form action="{{ route('list.store') }}" method="post">
        {{ csrf_field() }}
        <div class="form-group">
            <label for="">Tên danh mục</label>
            <input type="text" name="name" id="" class="form-control" placeholder="Tên danh mục...">
            @error('name')
                <small class="help-block ml-2 text-danger">{{ $message }}</small>
            @enderror
        </div>
        <input type="text" hidden name="status" value="1">
        <a href="{{ route('list.index') }}" class="btn btn-primary mr-4"><i class="fas fa-undo"></i> Quay về danh
            sách</a>

        <button type="submit" class="btn btn-success ml-2">Thêm <i class="fas fa-check-circle"></i></button>
    </form>
@endsection
