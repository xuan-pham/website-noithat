@extends('masterLayouts/server')
@section('title', 'Thay đổi thông tin')
@section('server')
    <form action="{{ route('product.update',$product->id) }}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        @method('PUT')
        <div class="row">
            <div class="table-left col-8">
                <div class="form-group">
                    <label for="">Tên sản phẩm</label>
                    <input type="text" name="name" value="{{ $product->name }}" class="form-control" placeholder="tên sản phẩm...">
                    @error('name')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Mô tả chi tiết sản phẩm</label>
                    <textarea name="content" id="" class="form-control" cols="30" rows="15">{{ $product->content }}</textarea>
                    @error('content')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
            </div>
            <div class="table-right col-4">
                <div class="form-group">
                    <label for="">Danh mục sản phẩm</label>
                    <select name="id_cate" class="form-control" id="">
                        <option value="{{ $product->id_cate }}">{{ $product->CategoryName->name }}</option>
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
                    <input type="number" name="price" value="{{ $product->price }}" class="form-control" placeholder="Giá tiền sản phẩm...">
                    @error('price')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Số lượng</label>
                    <input type="number" name="quantity" class="form-control" value="{{ $product->quantity }}" placeholder="số lượng sản phẩm...">
                    @error('quantity')
                        <small class="help-block ml-2 text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Hình ảnh</label>
                    <input type="file" name="file_image" class="form-control">
                </div>
                <div class="form-group">
                    <label for=""> Trạng thái</label>
                    <br>
                    @if ($product->status == 0)
                        <input type="radio" class="ml-4" value="1" name="status"> Hoạt động
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        <input type="radio" value="0" name="status" checked> Riêng tư
                    @else
                        <input type="radio" class="ml-4" value="1" name="status" checked> Hoạt động
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        <input type="radio" value="0" name="status"> Riêng tư
                    @endif
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
