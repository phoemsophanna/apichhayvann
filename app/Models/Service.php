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
        "ordering",
        "isActive",
        "metaKeyword",
        "metaDesc",
    ];
}
