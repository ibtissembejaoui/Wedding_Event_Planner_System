<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Package;
use App\User;
use Faker\Generator as Faker;

$factory->define(Package::class, function (Faker $faker) {
    return [
        'user_id' => User::get('id')->random(),
        'package_type'=>$faker->word,
        'photo'=>'http://lorempixel.com/640/480/people'.$faker->randomDigitNotNull,
        'package_date'=>$faker->date,
        'package_description'=>$faker->sentence,
        'package_amount' => $faker->randomFloat(3,2,150),
        'created_at' => now(),
        'updated_at' => now(),
        
    ];
});
