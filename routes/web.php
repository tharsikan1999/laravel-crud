<?php

use App\Http\Controllers\Employees;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

route::get('/employees', [Employees::class, 'index'])->name('employees.index');

route::get('/employees/create', [Employees::class, 'create'])->name('employees.create');

route::post('/employees/store', [Employees::class, 'store'])->name('employees.store');

route::get('/employees/edit', [Employees::class, 'edit']);

route::get('/employees/show', [Employees::class, 'show']);
