<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        "title",
        "titleKm",
        "description",
        "descriptionKm",
        "price",
        "images",
        "type",
        "typeKm",
        "country",
        "countryKm",
        "slug",
        "seo_title_eng",
        "seo_title_km",
        "seo_description_eng",
        "seo_description_km",
        "keywords",
        "gallery",
        "ordering",
        "status",
    ];
}
