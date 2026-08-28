<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExchangeRate extends Model
{
    use HasFactory;
    protected $fillable = [
        "from",
        "fromKm",
        "to",
        "toKm",
        "sell",
        "buy",
        "image",
        "isMultiply",
        "ordering",
        "status"
    ];
}
