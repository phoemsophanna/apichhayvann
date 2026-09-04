<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TradingVideo extends Model
{
    use HasFactory;
    protected $fillable = [
        "videoLink",
        "image",
        "ordering",
        "status"
    ];
}
