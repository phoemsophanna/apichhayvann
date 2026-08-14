<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    use HasFactory;
    protected $fillable = [
        "name",
        "nameKm",
        "position",
        "positionKm",
        "experience",
        "experienceKm",
        "description",
        "descriptionKm",
        "facebook",
        "telegram",
        "linkedin",
        "phone",
        "email",
        "image",
        "slug",
        "seo_title_eng",
        "seo_title_km",
        "seo_description_eng",
        "seo_description_km",
        "keywords",
        "ordering",
        "isActive",
    ];
}
