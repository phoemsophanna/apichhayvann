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
        Schema::create('price_histories', function (Blueprint $table) {
            $table->id();
            $table->string('pair');
            $table->decimal('bid', 15, 5);
            $table->decimal('ask', 15, 5);
            $table->timestamp('recorded_at');
            $table->index('recorded_at');

            $table->index('recorded_at');
            $table->index('pair');
            $table->index(['pair', 'recorded_at']);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('price_histories');
    }
};
