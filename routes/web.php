<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\KfzDbController;
use App\Http\Controllers\ExportController;
use App\Http\Controllers\FavoriteController;
use App\Http\Controllers\NoteController;
use Illuminate\Http\Request;

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


Route::get('/', [KfzDbController::class, 'index'])->name('web.kfzDb.index');
Route::post('/search', [KfzDbController::class, 'search'])->name('web.kzfDb.search');
Route::get('/show/{id}', [KfzDbController::class, 'show'])->name('web.kzfDb.show');

Route::post('/export/{id}', [ExportController::class, 'getExport'])->name('export');

Route::get('/favorites', [FavoriteController::class, 'index'])->name('favorite.index');
Route::post('/favorite/{id}', [FavoriteController::class, 'store'])->name('favorite.store');

Route::post('/notes/{kfzDbId}', [NoteController::class, 'store'])->name('notes.store');
Route::get('/notes/{kfzDbId}/delete/{id}', [NoteController::class, 'destroy'])->name('notes.destroy');
