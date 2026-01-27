<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Faq extends Model
{
    use HasFactory;
    protected $fillable = [
        "question",
        "questionKm",
        "answer",
        "answerKm",
        "mainId",
        "ordering",
        "isActive",
    ];

    public function mainFaq() {
        return $this->belongsTo(Category::class, "mainId", "id");
    }
}
