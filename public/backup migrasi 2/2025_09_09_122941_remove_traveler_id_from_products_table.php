<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            if (Schema::hasColumn('products', 'traveler_id')) {
                $table->dropColumn('traveler_id');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            if (!Schema::hasColumn('products', 'traveler_id')) {
                $table->unsignedBigInteger('traveler_id')->nullable();
                // kalau mau pake foreign key lagi, aktifkan baris ini:
                // $table->foreign('traveler_id')->references('id')->on('users')->onDelete('cascade');
            }
        });
    }
};
