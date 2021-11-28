@extends('masterLayouts/server')
@section('title', '')
@section('server')
    <form action="{{ route('product.store') }}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="row">
            <div class="table-left col-8">
                <div class="form-group">
                    <label for="">Tên sản phẩm</label>
                    <input type="text" name="name" class="form-control" placeholder="tên sản phẩm...">
                    @error('name')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Mô tả chi tiết sản phẩm</label>
                    <textarea name="content" id="" class="form-control" cols="30" rows="15"></textarea>
                    @error('content')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
            </div>
            <div class="table-right col-4">
                <div class="form-group">
                    <label for="">Danh mục sản phẩm</label>
                    <select name="id_cate" class="form-control" id="">
                        <option>---Chọn danh mục của sản phẩm---</option>
                        @foreach ($data as $item)
                            <option value="{{ $item->id }}">{{ $item->name }}</option>
                        @endforeach
                    </select>
                    @error('id_cate')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Giá tiền</label>
                    <input type="number" name="price" class="form-control" placeholder="Giá tiền sản phẩm...">
                    @error('price')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Số lượng</label>
                    <input type="number" name="quantity" class="form-control"  placeholder="số lượng sản phẩm...">
                    @error('quantity')
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
            <a href="{{ route('product.index') }}" class="btn btn-primary mr-4"><i class="fas fa-undo"></i> Quay về
                danh
                sách</a>
            <button type="submit" class="btn btn-success ml-2">Thêm <i class="fas fa-check-circle"></i></button>
        </div>

    </form>
@endsection
