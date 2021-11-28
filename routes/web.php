<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\HomeController;
//client
use App\Http\Controllers\client\ShopController;
use App\Http\Controllers\client\BlogsController;
//server
use App\Http\Controllers\server\CategoryController;
use App\Http\Controllers\server\ProductController;
use App\Http\Controllers\server\BlogController;
use App\Http\Controllers\server\ChangePwController;
use App\Http\Controllers\server\ListBlogController;
use App\Http\Controllers\server\OrderController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//client

Route::get('/', [HomeController::class, 'index'])->name('trang-chu');
Route::get('/lien-he', [HomeController::class, 'contact'])->name('lien-he');
Route::get('/tim-kiem', [HomeController::class, 'search'])->name('tim-kiem');
//shop
Route::get('/cua-hang', [ShopController::class, 'index'])->name('cua-hang');
Route::get('/cua-hang/chi-tiet-san-pham/{id}', [ShopController::class, 'detail'])->name('chi-tiet-san-pham');
Route::get('/cua-hang/danh-muc-san-pham{id}', [ShopController::class, 'detailCategory'])->name('danh-muc-san-pham');

//blog
Route::get('/tin-tuc', [BlogsController::class, 'index'])->name('tin-tuc');
Route::get('/tin-tuc/chi-tiet-tin-tuc', [BlogsController::class, 'index'])->name('chi-tiet-tin-tuc');
Route::get('/tin-tuc/danh-muc-tin-tuc', [BlogsController::class, 'index'])->name('danh-muc-tin-tuc');

//end client
//server
Route::prefix('admin')->group(function () {
    Route::get('/dashboard', [AdminController::class, 'index'])->name('admin.dashboard');
    // category
    Route::prefix('category')->group(function () {
        Route::get('/', [CategoryController::class, 'index'])->name('category.index');
        Route::get('/create', [CategoryController::class, 'create'])->name('category.create');
        Route::post('/store', [CategoryController::class, 'store'])->name('category.store');
        Route::get('/edit/{id}', [CategoryController::class, 'edit'])->name('category.edit');
        Route::put('/update/{id}', [CategoryController::class, 'update'])->name('category.update');
        Route::delete('/destroy{id}', [CategoryController::class, 'destroy'])->name('category.destroy');
    });
    // product
    Route::prefix('product')->group(function () {
        Route::get('/', [ProductController::class, 'index'])->name('product.index');
        Route::get('/create', [ProductController::class, 'create'])->name('product.create');
        Route::post('/store', [ProductController::class, 'store'])->name('product.store');
        Route::get('/edit', [ProductController::class, 'edit'])->name('product.edit');
        Route::put('/update', [ProductController::class, 'update'])->name('product.update');
        Route::delete('/destroy', [ProductController::class, 'destroy'])->name('product.destroy');
    });
    // list
    Route::prefix('list')->group(function () {
        Route::get('/', [ListBlogController::class, 'index'])->name('list.index');
        Route::get('/create', [ListBlogController::class, 'create'])->name('list.create');
        Route::post('/store', [ListBlogController::class, 'store'])->name('list.store');
        Route::get('/edit/{id}', [ListBlogController::class, 'edit'])->name('list.edit');
        Route::put('/update/{id}', [ListBlogController::class, 'update'])->name('list.update');
        Route::delete('/destroy/{id}', [ListBlogController::class, 'destroy'])->name('list.destroy');
    });
    // blog
    Route::prefix('blog')->group(function () {
        Route::get('/', [BlogController::class, 'index'])->name('blog.index');
        Route::get('/create', [BlogController::class, 'create'])->name('blog.create');
        Route::post('/store', [BlogController::class, 'store'])->name('blog.store');
        Route::get('/edit', [BlogController::class, 'edit'])->name('blog.edit');
        Route::put('/update', [BlogController::class, 'update'])->name('blog.update');
        Route::delete('/destroy', [BlogController::class, 'destroy'])->name('blog.destroy');
    });
    // order
    Route::prefix('order')->group(function () {
        Route::get('/', [OrderController::class, 'index'])->name('order.index');
        Route::get('/create', [OrderController::class, 'create'])->name('order.create');
        Route::post('/store', [OrderController::class, 'store'])->name('order.store');
        Route::get('/edit', [OrderController::class, 'edit'])->name('order.edit');
        Route::put('/update', [OrderController::class, 'update'])->name('order.update');
        Route::delete('/destroy', [OrderController::class, 'destroy'])->name('order.destroy');
    });
    // changepw
    Route::prefix('changepw')->group(function () {
        Route::get('/edit', [ChangePwController::class, 'edit'])->name('changepw.edit');
        Route::put('/update', [ChangePwController::class, 'update'])->name('changepw.update');
    });
});
