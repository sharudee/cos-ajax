<?php

Route::get('/',"HomeController@index");




//Route::get('sales','SaleController@sales');
//Route::get('salesform','SaleController@salesform');
//Route::get('productform','SaleController@productform');

Route::resource('entity', 'EntityController');
Route::controller('sales','CosController');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
