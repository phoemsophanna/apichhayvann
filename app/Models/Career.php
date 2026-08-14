<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Career extends Model
{
    use HasFactory;
    protected $fillable = [
        "title",
        "titleKm",
        "des",
        "desKm",
        "content",
        "contentKm",
        "location",
        "locationKm",
        "deadline",
        "slug",
        "seo_title_eng",
        "seo_title_km",
        "seo_description_eng",
        "seo_description_km",
        "keywords",
        "type",
        "ordering",
        "isActive",
    ];
}
