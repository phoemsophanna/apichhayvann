<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CareerApply extends Model
{
    use HasFactory;
    protected $fillable = [
        "firstname",
        "lastname",
        "phoneNumber",
        "email",
        "fileCv",
        "message",
        "careerId"
    ];

    public function career() {
        return $this->belongsTo(Career::class, "careerId", "id");
    }
}
