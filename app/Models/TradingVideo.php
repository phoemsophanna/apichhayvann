<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TradingVideo extends Model
{
    use HasFactory;
    protected $fillable = [
        "subtitle_eng",
        "subtitle_km",
        "title_eng",
        "title_km",
        "des_eng",
        "des_km",
        "videoLink",
        "image",
        "link",
        "ordering",
        "status"
    ];
}
