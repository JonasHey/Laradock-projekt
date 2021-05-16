<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KfzDb;

class KfzDbController extends Controller
{
    public function index(){
        return response()->view('index');
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
        return response()->view('summary', ['kfz' => $kfz, 'path' => request()->path()]);
    }
}
