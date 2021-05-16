<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\KfzDb;

class Notes extends Model
{
    use HasFactory;

    protected $table = 'notes';
    protected $fillable = ['note'];

    public function kfzDb(){
        return $this->belongsTo(KfzDb::class);
    }
}
