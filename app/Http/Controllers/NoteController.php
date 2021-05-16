<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KfzDb;
use App\Models\Notes;

class NoteController extends Controller
{
    public function store($kfzDbId){
        $note = new Notes;
        $note->kfz_db_id = $kfzDbId;
        $note->note =  request()->get('note_textarea');
        $note->save();
        return redirect()->route('web.kzfDb.show', ['id' => $kfzDbId]);
    }

    public function destroy($kfzDbId, $id){
        $note = Notes::where('id', $id)->first();
        $note->delete();
        return redirect()->route('web.kzfDb.show', ['id' => $kfzDbId]);
    }
}
