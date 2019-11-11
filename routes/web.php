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
    return view('selection');
})->name('index');

Route::get('/superhero', 'SuperheroController@index');
Route::get('/superhero/{name}', 'SuperheroController@show');
Route::post('/superhero/help', 'SuperheroController@store');

Auth::routes();
