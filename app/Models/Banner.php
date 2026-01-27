<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    use HasFactory;
    protected $fillable = [
        "title",
        "titleKm",
        "subtitle",
        "subtitleKm",
        "description",
        "descriptionKm",
        "linkLabel",
        "linkLabelKm",
        "linkTo",
        "redirectNewTap",
        "image",
        "ordering",
        "isActive",
    ];
}
