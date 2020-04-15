<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Booking;
use App\User;
use Faker\Generator as Faker;

$factory->define(Booking::class, function (Faker $faker) {
    return [
        
        'user_id'=> User::get('id')->random(),
        'booking_date'=>$faker->date,
        'booking_time'=>$faker->time,
        'created_at'=>now(),
        'updated_at'=>now(),
    ];
});
