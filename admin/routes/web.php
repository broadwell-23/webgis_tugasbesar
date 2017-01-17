<?php

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
    return view('web');
});

// buat logout
Route::get('logout', function() {
	Auth::logout();
	return view('auth.login');
});

Auth::routes();

// ADMIN PANEL
Route::get('/admin', 'DashboardController@index')->name('admin');
