<?php

use App\Http\Controllers\PlayersDataController;
use App\Http\Controllers\PlayersDataMVController;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/playerdata', [PlayersDataController::class, 'index']);
Route::post('/playerdata', [PlayersDataController::class, 'store']);

Route::get('/playerdata/mv', [PlayersDataMVController::class, 'index']);
Route::get('/playerdata/mv/{id}', [PlayersDataMVController::class, 'show']);
Route::post('/playerdata/mv', [PlayersDataMVController::class, 'store']);
