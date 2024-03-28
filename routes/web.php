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


route::get('/', [Employees::class, 'index'])->name('employees.index');

route::get('/employees/create', [Employees::class, 'create'])->name('employees.create');

route::post('/employees/store', [Employees::class, 'store'])->name('employees.store');

route::get('/employees/{employee}/edit', [Employees::class, 'edit'])->name('employees.edit');

route::get('/employees/{employee}', [Employees::class, 'show'])->name('employees.show');

route::put('/employees/{employee}', [Employees::class, 'update'])->name('employees.update');

route::delete('/employees/{employee}', [Employees::class, 'destroy'])->name('employee.destroy');
