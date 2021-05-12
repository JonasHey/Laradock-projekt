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
}
