<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Favorites extends Model
{
    use HasFactory;

    protected $table = "favorites";
    protected $fillable = ["kfz_db_id"];

    public function kfzDb(){
        return $this->belongsTo("App\Models\KfzDb", 'kfz_db_id', 'id');
    }
}
