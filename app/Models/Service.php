<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;
    protected $fillable = [
        "title",
        "titleKm",
        "image",
        "summary",
        "summaryKm",
        "content",
        "contentKm",
        "isDisplayHomepage",
        "slug",
        "seo_title_eng",
        "seo_title_km",
        "seo_description_eng",
        "seo_description_km",
        "keywords",
        "ordering",
        "isActive",
        "metaKeyword",
        "metaDesc",
    ];
}
