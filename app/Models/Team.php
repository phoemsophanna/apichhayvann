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
        "facebook",
        "telegram",
        "linkedin",
        "phone",
        "email",
        "image",
        "ordering",
        "isActive",
    ];
}
