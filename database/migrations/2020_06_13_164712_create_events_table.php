<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    public function up()
    {  Schema::create('events', function (Blueprint $table)
         {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('user_id'); 
            $table->string('event_type');
            $table->date('event_date');
            $table->time('event_time');
            $table->string('event_place');
            $table->string('event_deco');
            $table->string('event_food');
            $table->integer('guests_number');
            $table->boolean('confirmed')->default(0);
            $table->timestamps();
            $table->foreign('user_id')->references('id')->on('users');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('events');
    }
}
