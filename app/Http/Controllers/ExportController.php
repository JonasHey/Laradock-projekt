<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KfzDb;

use App\Helper\ExportCsv;
use App\Helper\ExportXml;
use App\Helper\ExportJson;

class ExportController extends Controller
{
    public function getExport(Request $request, $id){
        $kfzDb = KfzDb::where('id', $id)->first();
        switch (request()->get('export_type')) {
            case 'csv':
                $csvHelper = new ExportCsv($kfzDb);
                $csvHelper->startExport();
                sleep(1);
                $filePath = $csvHelper->getFilePath();
                $fileName = $csvHelper->getFileName();
                break;
            case 'xml':
                $xmlHelper = new ExportXml($kfzDb);
                $xmlHelper->startExport();
                sleep(1);
                $filePath = $xmlHelper->getFilePath();
                $fileName = $xmlHelper->getFileName();
                break;
            case 'json':
                $jsonHelper = new ExportJson($kfzDb);
                $jsonHelper->startExport();
                sleep(1);
                $filePath = $jsonHelper->getFilePath();
                $fileName = $jsonHelper->getFileName();
                break;
        }
        return response()->download($filePath, $fileName)->deleteFileAfterSend();
    }
}
