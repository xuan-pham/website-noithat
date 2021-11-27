<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\server\CategoryController;
use App\Http\Controllers\server\ProductController;
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
//server
Route::prefix('admin')->group(function () {
    Route::get('/dashboard', [AdminController::class, 'index'])->name('dashboard');
    // category
    Route::prefix('category')->group(function () {
        Route::get('/',[CategoryController::class,'index'])->name('category.index');
        Route::get('/create',[CategoryController::class,'create'])->name('category.create');
        Route::post('/store',[CategoryController::class,'store'])->name('category.store');
        Route::get('/edit/{id}',[CategoryController::class,'edit'])->name('category.edit');
        Route::put('/update/{id}',[CategoryController::class,'update'])->name('category.update');
        Route::delete('/destroy{id}',[CategoryController::class,'destroy'])->name('category.destroy');
    });
    // product
    Route::prefix('product')->group(function () {
        Route::get('/',[ProductController::class,'index'])->name('product.index');
        Route::post('/create',[ProductController::class,'create'])->name('product.create');
        Route::get('/edit',[ProductController::class,'edit'])->name('product.edit');
        Route::put('/update',[ProductController::class,'update'])->name('product.update');
        Route::delete('/destroy',[ProductController::class,'destroy'])->name('product.destroy');
    });
});
