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
Route::get('long',function(){

    return view('long');
});

Route::get('thanhcong',function(){
    return view('thanhcong');
});
Route::get('thanhcong1',function(){
    return view('example.thanhcong');
});
Route::get('/',[
    'as'=>'trangchu',
    'uses'=>'PageController@getIndex'
]);
Route::post('/',[
    'as'=>'trangchutk',
    'uses'=>'PageController@getSearch'
]);
Route::get('/dangnhap',[
    'as'=>'dangnhap',
    'uses'=>'Authcontroller@getDangnhap'
]);
Route::get('/dangxuat',[
    'as'=>'dangxuat',
    'uses'=>'Authcontroller@getDangxuat'
]);
Route::get('/dangky',[
    'as'=>'dangky',
    'uses'=>'Authcontroller@getDangky'
]);
Route::get('/giohang',[
    'as'=>'giohang',
    'uses'=>'PageController@getGiohang'
]);
Route::get('/thanhtoan',[
    'as'=>'thanhtoan',
    'uses'=>'PageController@getThanhtoan'
]);
Route::get('/loaisp/{id}',[
    'as'=>'loaisp',
    'uses'=>'PageController@getLoaisp'
]);
Route::get('/daugia/{id}',[
    'as'=>'daugia',
    'uses'=>'PageController@getDaugia'
]);
// Route::post('/dau-gia',[
//     'as'=>'postdaugia',
//     'uses'=>'PageController@postdaugia'
// ]);
Route::get('/postdaugia/{id}',[
    'as'=>'postdaugia',
    'uses'=>'PageController@postDaugia'
]);

Route::get('/add-to-cart/{id}',[
    'as'=>'themgiohang',
    'uses'=>'PageController@getAddtocart']);

Route::get('/kiem-tra-don-hang',[
    'as'=>'tracuu',
    'uses'=>'PageController@getTracuu'
]);

Route::get('/profile',function(){
    return view('profile');
});
Route::post('/profile',[
    'as'=>'postupdateinfo',
    'uses'=>'PageController@postupdateinfo']);
Route::post('/posttracuu',[
    'as'=>'posttracuu',
    'uses'=>'PageController@postTracuu']);

Route::post('/postdangnhap',[
    'as'=>'postdangnhap',
    'uses'=>'Authcontroller@postDangnhap'
]);
Route::post('/postdangky',[
    'as'=>'postdangky',
    'uses'=>'Authcontroller@postDangky'
]);
Route::post('/postThanhtoan',[
    'as'=>'postThanhtoan',
    'uses'=>'PageController@postThanhtoan'
]);

Route::post('/updateDB',[
    'as'=>'postupdateDB',
    'uses'=>'PageController@postupdateDB'
]);



