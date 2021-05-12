<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStateAndCityToKfzDB extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('kfz_db', function (Blueprint $table) {
            $table->string('kreis_city');
            $table->string('kreis_state');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('kfz_db', function (Blueprint $table) {
            $tabel->dropColumn('kreis_city');
            $tabel->dropColumn('kreis_state');
        });
    }
}
