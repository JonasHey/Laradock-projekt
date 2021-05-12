<?php

namespace App\Models\API;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\KfzDb as BaseKfzDb;

class KfzDb extends BaseKfzDb
{
    public function toJson($options = null){
        return [
            "id" => $this->id,
            "key" => $this->kfz_key,
            "kreis" => $this->kfz_kreis
        ];
    }
}
