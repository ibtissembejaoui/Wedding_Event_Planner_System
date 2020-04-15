<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Planner;
use App\Package;
use Faker\Generator as Faker;

$factory->define(Planner::class, function (Faker $faker) {
    return [
/*
        'package_id'=>package::get('id')->random(),
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
        'address' => $faker->address,
        'phone' => $faker->e164PhoneNumber,
        'created_at' => now(),
        'updated_at' => now(),
        */
    ];
});
