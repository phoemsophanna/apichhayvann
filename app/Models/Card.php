<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Card extends Model
{
    use HasFactory;

    protected $fillable = [
        "title_eng",
        "title_km",
        "description_eng",
        "description_km",
        "icon",
        "ordering",
        "status"
    ];
}
