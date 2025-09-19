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
        // hapus foreign key dulu
        $table->dropForeign(['traveler_id']);
        // baru hapus kolom
        $table->dropColumn('traveler_id');
    });
}

public function down()
{
    Schema::table('products', function (Blueprint $table) {
        $table->unsignedBigInteger('traveler_id')->nullable();
        $table->foreign('traveler_id')->references('id')->on('users')->onDelete('cascade');
    });
}

};
