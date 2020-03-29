<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBookingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    public function up()
    {  Schema::create('bookings', function (Blueprint $table)
         {
            $table->bigIncrements('id');
            //$table->unsignedBigInteger('customer_id'); (ceci provoque un erreur puisque la table"customers" est réalisée par nesrine Messaoudi")
            $table->date('booking_date');
            $table->time('booking_time');
            $table->timestamps();
            //$table->foreign('customer_id')->references('id')->on('customers');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bookings');
    }
}
