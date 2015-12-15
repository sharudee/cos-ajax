<?php

Route::get('/',"HomeController@index");

Route::resource('entity', 'EntityController');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
