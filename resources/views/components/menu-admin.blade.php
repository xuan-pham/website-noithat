@if ($admin->id_role === 1)
    <li class="nav-item">
        <a href="#" class="nav-link">
            <i class="nav-icon fas fa-archive"></i>
            <p>
                Danh mục sản phẩm
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ route('category.index') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách danh mục</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('category.create') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm danh mục mới</p>
                </a>
            </li>

        </ul>
    </li>
    {{-- product --}}
    <li class="nav-item">
        <a href="#" class="nav-link">
            <i class="nav-icon fas fa-chart-pie"></i>
            <p>
                Sản phẩm
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ route('product.index') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách sản phẩm</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('product.create') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm mới sản phẩm</p>
                </a>
            </li>

        </ul>
    </li>
    {{-- category blog --}}
    <li class="nav-item">
        <a href="#" class="nav-link">
            <i class="nav-icon fas fa-bong"></i>
            <p>
                Danh mục tin tức
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ route('list.index') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách danh mục</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('list.create') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm mới danh mục</p>
                </a>
            </li>

        </ul>
    </li>
    {{-- blog --}}

    <li class="nav-item">
        <a href="#" class="nav-link">
            <i class="nav-icon fas fa-blog"></i>
            <p>
                Tin tức
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ route('blog.index') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách tin tức</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('blog.create') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm mới tin tức</p>
                </a>
            </li>

        </ul>
    </li>
    {{-- order --}}
    <li class="nav-item">
        <a href="#" class="nav-link">
            <i class="nav-icon fas fa-book-dead"></i>
            <p>
                Đơn hàng
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ route('order.index') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách đơn hàng</p>
                </a>
        </ul>
    </li>
    {{-- change password --}}
    <li class="nav-item">
        <a href="{{ route('changepw.edit', Auth::User()->id) }}" class="nav-link">
            <i class="nav-icon fas fa-blind"></i>
            <p>
                <i class="right fas fa-angle-left"></i>
                Thay đổi mật khẩu

            </p>
        </a>
    </li>

@endif
@if ($admin->id_role === 2)
    <li class="nav-item">
        <a href="#" class="nav-link">
            <i class="nav-icon fas fa-archive"></i>
            <p>
                Danh mục sản phẩm
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ route('category.index') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách danh mục</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('category.create') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm danh mục mới</p>
                </a>
            </li>

        </ul>
    </li>
    {{-- product --}}
    <li class="nav-item">
        <a href="#" class="nav-link">
            <i class="nav-icon fas fa-chart-pie"></i>
            <p>
                Sản phẩm
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ route('product.index') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách sản phẩm</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('product.create') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm mới sản phẩm</p>
                </a>
            </li>

        </ul>
    </li>
@endif
@if ($admin->id_role === 3)
    {{-- category blog --}}
    <li class="nav-item">
        <a href="#" class="nav-link">
            <i class="nav-icon fas fa-bong"></i>
            <p>
                Danh mục tin tức
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ route('list.index') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách danh mục</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('list.create') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm mới danh mục</p>
                </a>
            </li>

        </ul>
    </li>
    {{-- blog --}}

    <li class="nav-item">
        <a href="#" class="nav-link">
            <i class="nav-icon fas fa-blog"></i>
            <p>
                Tin tức
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{ route('blog.index') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Danh sách tin tức</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('blog.create') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Thêm mới tin tức</p>
                </a>
            </li>

        </ul>
    </li>
@endif
