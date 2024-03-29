<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Models\API\KfzDb;
use App\Http\Controllers\Controller;

class KfzDbController extends Controller
{
    public function index(){
        $kfzDb = KfzDb::all();
        $kfzDb = $kfzDb->map(function ($item, $key) {
            return $item->toJson();
        });
        if($kfzDb->isEmpty()){
            return response()->noContent();
        }
        return response()->json($kfzDb, 200);
    }


    public function store(Request $request){
        $input = request()->get('input');
        $kfzArray = explode(PHP_EOL, $input);
        foreach($kfzArray as $kfzPair){
            $kfzPairArray = preg_split('/\s+/', $kfzPair);
            $kfzDbEntry = KfzDb::create([
                'kfz_key' => $kfzPairArray[0],
                'kfz_kreis' => $kfzPairArray[1],
            ]);
        }
        return response()->json(null, 200);
    }
}
