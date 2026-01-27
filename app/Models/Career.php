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
        "type",
        "ordering",
        "isActive",
    ];
}
