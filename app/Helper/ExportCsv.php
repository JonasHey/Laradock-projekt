<?php

namespace App\Helper;

use App\Interfaces\Export;
use App\Models\KfzDb;
use Storage;
use File;

class ExportCsv implements Export
{
    protected string $filePath;

    protected string $fileName;

    protected KfzDb $data;

    public function ExportCsv(KfzDb $data){
        $this->data = $data;
        $csvExportFolderPath = storage_path('app/csv');
        if(!File::exists($csvExportFolderPath)) {
            info('csv export folder created');
            File::makeDirectory($csvExportFolderPath, 0777, true, true);
        }
    }

    public function startExport(): void {
        $columns = array('Unterscheidungszeichen', 'Kreis', 'Kreistadt', 'Bundesland');
        $this->fileName = "csv_export_".$this->data->key.time().".csv";
        $file = fopen(storage_path('app/csv/'.$this->filename), 'w');
        fputcsv($file, $columns);
        fputcsv($file, array($this->data->key, $this->data->kreis, $this->data->city, $this->data->state));
        fclose($file);
        $this->filePath = storage_path('app/csv/'.$this->filename);
    }

    public function getFilePath(): string {
        return $this->filePath;
    }

    public function getFileName(): string {
        return $this->fileName;
    }
}