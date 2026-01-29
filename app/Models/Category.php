<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = [
        "type",
        "title",
        "titleKm",
        "image", 
        "ordering",
        "status"
    ];

    public function faq() {
        return $this->hasMany(Faq::class, "mainId", "id");
    }
}
