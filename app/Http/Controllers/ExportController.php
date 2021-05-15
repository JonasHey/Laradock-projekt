<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KfzDb;

use App\Helper\ExportCsv;

class ExportController extends Controller
{
    public function getExport(Request $request, $id){
        $kfzDb = KfzDb::find($id)->first();
        switch (request()->get('export_type')) {
            case 'csv':
                $csvHelper = new ExportCsv($kfzDb);
                $csvHelper->startExport();
                sleep(500);
                $filePath = $csvHelper->getFilePath();
                $fileName = $csvHelper->getFileName();
                break;
            case 'xml':
                # code...
                break;
            
            default:
                # code...
                break;
        }
        return response()->download($filePath, $fileName)->deleteFileAfterSend();
    }
}
