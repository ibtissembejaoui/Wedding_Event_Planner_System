<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Payment;
use App\Booking;
use Faker\Generator as Faker;

$factory->define(Payment::class, function (Faker $faker) {
    return [
        'booking_id'=> Booking::get('id')->random(),
        'payment_type'=>$faker->word,
        'payment_amount'=>$faker->randomFloat(3,2,150),
        'payment_date'=>$faker->date,
        'payment_time'=>$faker->time,
        'created_at'=>now(),
        'updated_at'=>now(),
    ];
});
