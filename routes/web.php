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

Route::get('/', 'AppController@index')->name('welcome');
Route::get('/event/confirmed','AppController@confirmed')->middleware('auth');;


Auth::routes();

Route::middleware('auth')->group(function () {

    Route::get('/home', 'AppController@home')->name('home');
    Route::group(['middleware'=>'admin','namespace'=>'Admin'],function(){
        Route::resource('/planner', 'PlannerController');
        Route::resource('/packages','PackageController');
        Route::get('/todayevent','EventContoller@todayEvent');
        Route::get('/comingevent','EventContoller@comingEvent');
        Route::get('/passedevent','EventContoller@passedEvent');
        Route::get('/listuser', 'UserController@index');
    });
    Route::resource('/event', 'EventController');
});

Route::resource('/packages','PackageController');
Route::get('/mypackage','PackageController@mypackage');
Route::get('/aboutus','PackageController@about');
Route::get('/contactus','PackageController@contact');
