<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KfzDb;

class NoteController extends Controller
{
    public function index($kfzDbId){
        $notes = KfzDb::where('id', $kfzDbId)->first()->notes();
        dd($notes);
    }

    public function store($kfzDbId){

    }

    public function update(Request $request, $kfzDbId, $noteId){

    }

    public function destroy(Request $request, $kfzDbId, $noteId){

    }
}
