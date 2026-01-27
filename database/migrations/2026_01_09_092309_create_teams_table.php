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
        Schema::create('teams', function (Blueprint $table) {
            $table->id();
            $table->string("name")->nullable();
            $table->string("nameKm")->nullable();
            $table->string("position")->nullable();
            $table->string("positionKm")->nullable();
            $table->string("experience")->nullable();
            $table->string("experienceKm")->nullable();
            $table->string("facebook")->nullable();
            $table->string("telegram")->nullable();
            $table->string("linkedin")->nullable();
            $table->string("phone")->nullable();
            $table->string("email")->nullable();
            $table->string("image")->nullable();
            $table->integer("ordering")->nullable();
            $table->tinyInteger("isActive")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('teams');
    }
};
