<?php

namespace App\Helper;

use App\Interfaces\Export;
use App\Models\KfzDb;
use Storage;
use File;
use XML;

class ExportXml implements Export
{
    protected string $filePath;

    protected string $fileName;

    protected KfzDb $data;

    public function ExportXml(KfzDb $data){
        $this->data = $data;
        $xmlExportFolderPath = storage_path('app/xml');
        if(!File::exists($xmlExportFolderPath)) {
            info('xml export folder created');
            File::makeDirectory($xmlExportFolderPath, 0777, true, true);
        }
    }

    public function startExport(): void {
        $columns = array('Unterscheidungszeichen', 'Kreis', 'Kreistadt', 'Bundesland');
        $this->fileName = "xml_export_".$this->data->key.time().".xml";
        $data = [
            'kennzeichenInformation' => [
                'kennzeichen' => $this->data->key,
                'kreis' => $this->data->kreis,
                'kreisstadt' => $this->data->city,
                'bundesland' => $this->data->state,
            ]
        ]

        XML::export($data)
            ->usePrettyOutput()
            ->toFile($fileName);

        $this->filePath = storage_path('app/xml/'.$this->fileName);
    }

    public function getFilePath(): string {
        return $this->filePath;
    }

    public function getFileName(): string {
        return $this->fileName;
    }
}