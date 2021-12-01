<div class="col-lg-3">
    <div class="hero__categories">
        <div class="hero__categories__all">
            <i class="fa fa-bars"></i>
            <span>Danh mục</span>
        </div>
        <ul>
            @foreach ($category as $item)
                <li><a href="{{ route('danh-muc-san-pham',$item->id) }}">{{ $item->name }}</a></li>
            @endforeach
        </ul>
    </div>
</div>
