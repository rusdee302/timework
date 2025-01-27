<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RfidCardController;
use App\Http\Controllers\KeyCodeController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

// Route::get('/', function () {
//     return Inertia::render('Welcome', [
//         'canLogin' => Route::has('login'),
//         'canRegister' => Route::has('register'),
//         'laravelVersion' => Application::VERSION,
//         'phpVersion' => PHP_VERSION,
//     ]);
// });

Route::get('/', [RfidCardController::class, 'Welcome'])->name('Welcome');
Route::post('/rfid/card', [RfidCardController::class, 'post_rfid'])->name('post.rfid');
Route::get('/rfid/show/{rfid}', [RfidCardController::class, 'show_slip'])->name('rfid.show');

// ---------- กรอกเลขพนักงาน
Route::get('/Welcome_code', [KeyCodeController::class, 'Welcome'])->name('Welcome_code');
Route::post('/key/code', [KeyCodeController::class, 'post_code'])->name('post.code');
Route::get('/key/show/{code}', [KeyCodeController::class, 'show_code'])->name('code.show');

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';
