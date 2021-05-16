<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class KfzDb extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $table = "kfz_db";
    protected $fillable = ["kfz_key", "kfz_kreis"];

    public function favorites(){
        return $this->hasOne("App\Models\Favorites", 'kfz_db_id', 'id');
    }
}
