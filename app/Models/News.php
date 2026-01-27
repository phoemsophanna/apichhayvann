<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
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
        "date",
        "category_id",
        "ordering",
        "isActive",
        "metaKeyword",
        "metaDesc",
    ];

    public function category() {
        return $this->belongsTo(Category::class, "category_id", "id");
    }
}
