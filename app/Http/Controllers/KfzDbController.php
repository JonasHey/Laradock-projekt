<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KfzDb;
use App\Models\Favorites;
use App\Models\Notes;

class KfzDbController extends Controller
{
    public function index(){
        $favorites = Favorites::all();
        return response()->view('index', ['favorites' => $favorites]);
    }

    public function search(Request $request){
        switch (request()->get('search_type')) {
            case 'kennzeichen':
                $data = KfzDb::where('kfz_key', 'like', request()->get('kennzeichen_input').'%')->get();
                break;

            case 'bundesland':
                $data = KfzDb::where('kfz_state', 'like', '%'.request()->get('bundesland_input').'%')->get();
                break;

            case 'kreisstadt':
                $data = KfzDb::where('kfz_city', 'like', '%'.request()->get('kreisstadt_input').'%')->get();
                break;

            default:
                $data = KfzDb::where('kfz_key', request()->get('kennzeichen_input'))
                    ->orWhere('kfz_kreis', request()->get('kennzeichen_input'))
                    ->orWhere('kfz_state', request()->get('kennzeichen_input'))
                    ->orWhere('kfz_city', request()->get('kennzeichen_input'))
                    ->get();
                break;
        }
        return response()->view('list_view', ['data' => $data]);
    }

    public function show(Request $request, $id){
        $kfz = KfzDb::find($id);
        $favorite = Favorites::where('kfz_db_id', $id)->get();
        $isFavorite = !$favorite->isEmpty();
        $notes = Notes::where('kfz_db_id', $id)->get();
        if($notes->isEmpty()){
            $notes  = "empty";
        }
        return response()->view('summary', ['kfz' => $kfz, 'path' => request()->path(), 'isFavorite' => $isFavorite, 'notes' => $notes]);
    }
}
