<?php

namespace App\Helper;

use App\Interfaces\Export;
use App\Models\KfzDb;
use Storage;
use File;

class ExportCsv implements Export
{
    protected $filePath;

    protected $fileName;

    protected $data;

    function __construct($data){
        $this->data = $data;
        $csvExportFolderPath = storage_path('app/csv');
        if(!File::exists($csvExportFolderPath)) {
            info('csv export folder created');
            File::makeDirectory($csvExportFolderPath, 0777, true, true);
        }
    }

    public function startExport(): void {
        $columns = array('Kennzeichen', 'Kreis', 'Kreistadt', 'Bundesland');
        $this->fileName = "csv_export_".$this->data->kfz_key.time().".csv";
        $file = fopen(storage_path('app/csv/'.$this->fileName), 'w');
        fputcsv($file, $columns);
        fputcsv($file, array($this->data->kfz_key, $this->data->kfz_kreis, $this->data->kfz_city, preg_replace('/(\v|\s)+/', '', $this->data->kfz_state)));
        fclose($file);
        $this->filePath = storage_path('app/csv/'.$this->fileName);
    }

    public function getFilePath(): string {
        return $this->filePath;
    }

    public function getFileName(): string {
        return $this->fileName;
    }
}