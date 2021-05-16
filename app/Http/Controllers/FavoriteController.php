<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Favorites;
use App\Models\KfzDb;

class FavoriteController extends Controller
{
    public function store(Request $request, $id){
        if(request()->get('favorite_type') == 'add'){
            $favorite = new Favorites;
            $favorite->kfz_db_id = $id;
            $favorite->save();
        }else if(request()->get('favorite_type') == 'delete'){
            $favorite = KfzDb::where('id', $id)->first()->favorites();
            $favorite->delete();
        }
        return redirect()->route('web.kzfDb.show', ['id' => $id]);
    }
}
