<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductWebController;

Route::resource('products', ProductWebController::class);
