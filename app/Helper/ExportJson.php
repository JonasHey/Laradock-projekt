<?php

namespace App\Helper;

use App\Interfaces\Export;
use App\Models\KfzDb;
use Storage;
use File;

class ExportJson implements Export
{
    protected $filePath;

    protected $fileName;

    protected $data;

    function __construct($data){
        $this->data = $data;
        $jsonExportFolderPath = storage_path('app/json');
        if(!File::exists($jsonExportFolderPath)) {
            info('json export folder created');
            File::makeDirectory($jsonExportFolderPath, 0777, true, true);
        }
    }
    
    public function startExport(): void {
        $json = [
            "Kennzeichen" => $this->data->kfz_key, 
            "Kreis" => $this->data->kfz_kreis, 
            "Kreisstadt" => $this->data->kfz_city, 
            "Bundesland" => preg_replace('/(\v|\s)+/', '', $this->data->kfz_state)
        ];
        $this->fileName = "json_export_".$this->data->kfz_key.time().".json";
        $this->filePath = storage_path('app/json/'.$this->fileName);
        $prettyJson = json_encode($json, JSON_PRETTY_PRINT);
        file_put_contents(storage_path('app/json/'.$this->fileName), stripslashes($prettyJson));
    }

    public function getFilePath(): string {
        return $this->filePath;
    }

    public function getFileName(): string {
        return $this->fileName;
    }
}