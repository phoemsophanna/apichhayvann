<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Testimonial extends Model
{
    use HasFactory;
    protected $fillable = [
        "reviewerName",
        "reviewerPosition",
        "reviewerPositionKm",
        "comment",
        "commentKm",
        "reviewerProfile",
        "isDisplayHomepage",
        "ordering",
        "isActive",
    ];
}
