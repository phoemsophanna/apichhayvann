<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trading extends Model
{
    use HasFactory;
    protected $fillable = [
        "step",
        "stepKm",
        "title",
        "titleKm",
        "summary",
        "summaryKm",
        "image",
        "ordering",
        "status"
    ];
}
