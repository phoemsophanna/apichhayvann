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
        Schema::create('tradings', function (Blueprint $table) {
            $table->id();
            $table->string("step")->nullable();
            $table->string("stepKm")->nullable();
            $table->string("title")->nullable();
            $table->string("titleKm")->nullable();
            $table->text("summary")->nullable();
            $table->text("summaryKm")->nullable();
            $table->string("image")->nullable();
            $table->integer("ordering")->default(1);
            $table->tinyInteger("status")->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tradings');
    }
};
