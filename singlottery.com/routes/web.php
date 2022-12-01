<?php

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

Route::get('/', function () {
    return view('index');
});

Route::get('/login', function () {
    return view('login');
});

Route::get('/conf', function () {
    return view('conf');
});

Route::get('/addlottery', function () {
    return view('lotteryform');
});

Route::get('/piechart', function () {
    return view('piechart');
});

Route::get('/redir', function () {
    return view('redir');
});

Route::get('/addresult', function () {
    return view('resultform');
});

Route::get('/viewlottery', function () {
    return view('viewlottery');
});

Route::get('/viewresult', function () {
    return view('viewresult');
});

Route::get('/viewwinners', function () {
    return view('viewwinners');
});