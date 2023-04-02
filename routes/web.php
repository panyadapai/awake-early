<?php

use App\Http\Controllers\Awakeearly\AwakeEarlyController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', [AwakeEarlyController::class, "index"])->name('home');
Route::get('/create', [AwakeEarlyController::class, "create"]);
Route::get('/region', [AwakeEarlyController::class, "getFromPostcode"]);
