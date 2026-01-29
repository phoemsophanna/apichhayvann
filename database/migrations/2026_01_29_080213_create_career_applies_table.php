<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('career_applies', function (Blueprint $table) {
            $table->id();
            $table->string("firstname")->nullable();
            $table->string("lastname")->nullable();
            $table->string("phoneNumber")->nullable();
            $table->string("email")->nullable();
            $table->string("fileCv")->nullable();
            $table->text("message")->nullable();
            $table->integer("careerId");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('career_applies');
    }
};
