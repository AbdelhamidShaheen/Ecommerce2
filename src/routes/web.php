<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    Cache::put('key', "wellcome redis");
    dd(Cache::get('key', 'default'));
    return view('welcome');
});
