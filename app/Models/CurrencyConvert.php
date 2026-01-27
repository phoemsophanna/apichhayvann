<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CurrencyConvert extends Model
{
    use HasFactory;
    protected $fillable = [
        "currency",
        "type",
        "subCurrency",
        "rate",
        "image",
        "status"
    ];
}
