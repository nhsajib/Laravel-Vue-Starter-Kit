<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->group(function () {

	Route::get('/user', function (Request $request) {
	    return $request->user();
	});

	//Dashboard Routes
	Route::get('/dashboard/todaycount', [App\Http\Controllers\DashboardController::class, 'todayscount']);
	Route::get('/dashboard/chartdata', [App\Http\Controllers\DashboardController::class, 'chartdata']);

	//Setting Controller
	Route::post('/setting/company', [App\Http\Controllers\SettingController::class, 'company']);
	Route::post('/setting/user', [App\Http\Controllers\SettingController::class, 'updateuser']);
	Route::post('/setting/update/password', [App\Http\Controllers\SettingController::class, 'updatepass']);

});

	//Company Info
	Route::get('/company/info', [App\Http\Controllers\DashboardController::class, 'company']);

	//Auth Routes
	Route::post('/password/email', [App\Http\Controllers\Auth\ForgotPasswordController::class, 'sendResetLinkEmail']);
	Route::get('/password/reset/form/{token}', [App\Http\Controllers\Auth\ResetPasswordController::class, 'showResetForm']);
	Route::post('/password/reset', [App\Http\Controllers\Auth\ResetPasswordController::class, 'reset']);
	Route::post('/register', [App\Http\Controllers\Auth\RegisterController::class, 'register']);
	Route::post('/login', [App\Http\Controllers\Auth\LoginController::class, 'login']);
	Route::post('/logout', [App\Http\Controllers\Auth\LoginController::class, 'logout']);