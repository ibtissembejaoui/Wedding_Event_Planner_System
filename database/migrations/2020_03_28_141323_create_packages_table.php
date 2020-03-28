<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePackagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('packages', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('planner_id')->unsigned();
            $table->string('package_name');
            $table->string('package_type');
            $table->date('package_date');
            $table->text('package_description');
            $table->double('package_amount',8,3);
            $table->timestamps();
            $table->foreign('planner_id')->references('id')->on('planners');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('packages');
    }
}
