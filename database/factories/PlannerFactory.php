<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Planner;
use Faker\Generator as Faker;

$factory->define(Planner::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'photo' => 'http://lorempixel.com/640/480/people/'.$faker->randomDigitNotNull,
        'phone' => $faker->e164PhoneNumber,
        'email' => $faker->unique()->safeEmail,
        'adress' => $faker->address,
        'created_at' => now(),
        'updated_at' =>now(),
    ];
});
