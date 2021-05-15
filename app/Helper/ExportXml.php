<?php

namespace App\Helper;

use App\Interfaces\Export;
use App\Models\KfzDb;
use Storage;
use File;
use XML;

class ExportXml implements Export
{
    protected $filePath;

    protected $fileName;

    protected $data;

    function __construct($data){
        $this->data = $data;
        $xmlExportFolderPath = storage_path('app/xml');
        if(!File::exists($xmlExportFolderPath)) {
            info('xml export folder created');
            File::makeDirectory($xmlExportFolderPath, 0777, true, true);
        }
    }

    public function startExport(): void {
        $this->fileName = "xml_export_".$this->data->kfz_key.time().".xml";
        $this->filePath = storage_path('app/xml/'.$this->fileName);
        $data = [
            'kennzeichen' => $this->data->kfz_key,
            'kreis' => $this->data->kfz_kreis,
            'kreisstadt' => $this->data->kfz_city,
            'bundesland' => preg_replace('/(\v|\s)+/', '', $this->data->kfz_state),
        ];
        $xml = XML::export($data)
            ->usePrettyOutput()
            ->rootTag('KennzeichenInformationen')
            ->toString();

        file_put_contents($this->filePath, $xml);
    }

    public function getFilePath(): string {
        return $this->filePath;
    }

    public function getFileName(): string {
        return $this->fileName;
    }
}