@extends('masterLayouts/server')
@section('title', 'Thay đổi mật khẩu')
@section('server')
    @if (Session::has('error'))
        <div class="alert alert-danger">
            {{ session('error') }}
        </div>
    @endif
    <form action="{{ route('changepw.update', $changepw->id) }}" method="POST">
        {{ csrf_field() }}
        @method("PUT")
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Mật khẩu cũ</label>
            <input type="password" class="form-control" name="pw_old" id="exampleInputEmail1" aria-describedby="emailHelp">
            @error('pw_old')
                <small class="help-block ml-2 text-danger">{{ $message }}</small>
            @enderror
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Mật khẩu mới</label>
            <input type="password" class="form-control" name="pw_new" id="exampleInputPassword1">
            @error('pw_new')
                <small class="help-block ml-2 text-danger">{{ $message }}</small>
            @enderror
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Xác minh lại mật khẩu</label>
            <input type="password" class="form-control" name="pw_confir" id="exampleInputPassword1">
            @error('pw_confir')
                <small class="help-block ml-2 text-danger">{{ $message }}</small>
            @enderror
        </div>
        <button type="submit" class="btn btn-primary">Gửi</button>
    </form>
@endsection
