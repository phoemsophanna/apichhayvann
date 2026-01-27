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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string("title")->nullable();
            $table->string("titleKm")->nullable();
            $table->text("description")->nullable();
            $table->text("descriptionKm")->nullable();
            $table->string("price")->nullable();
            $table->string("images")->nullable();
            $table->string("type")->nullable();
            $table->string("typeKm")->nullable();
            $table->string("country")->nullable();
            $table->string("countryKm")->nullable();
            $table->text("gallery")->nullable();
            $table->integer("ordering")->nullable();
            $table->tinyInteger("status")->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
