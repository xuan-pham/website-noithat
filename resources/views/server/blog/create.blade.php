@extends('masterLayouts/server')
@section('title', 'Thêm mới tin tức')
@section('server')
    <form action="{{ route('blog.store') }}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="row">
            <div class="table-left col-8">
                <div class="form-group">
                    <label for="">Tiêu đề tin tức</label>
                    <input type="text" name="name" class="form-control" placeholder="tiêu đề tin tức...">
                    @error('name')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Nội dung</label>
                    <textarea name="content" id="" class="form-control" cols="30" rows="15"></textarea>
                    @error('content')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
            </div>
            <div class="table-right col-4">
                <div class="form-group">
                    <label for="">Danh mục sản phẩm</label>
                    <select name="id_blog" class="form-control" id="">
                        <option>---Chọn danh mục của tin tức---</option>
                        @foreach ($data as $item)
                            <option value="{{ $item->id }}">{{ $item->name }}</option>
                        @endforeach
                    </select>
                    @error('id_blog')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Hình ảnh</label>
                    <input type="file" name="file_image" class="form-control">
                    @error('file_image')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <input type="radio" name="status" hidden value="1" checked class="form-control">
                </div>
            </div>
        </div>
        <div class="functionServer pr">
            <a href="{{ route('blog.index') }}" class="btn btn-primary mr-4"><i class="fas fa-undo"></i> Quay về
                danh
                sách</a>
            <button type="submit" class="btn btn-success ml-2">Thêm <i class="fas fa-check-circle"></i></button>
        </div>

    </form>
@endsection
