<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Package;
use Faker\Generator as Faker;

$factory->define(Package::class, function (Faker $faker) {
    return [
        
        'package_type'=>$faker->word,
        'photo'=>'http://lorempixel.com/640/480/'.$faker->randomDigitNotNull,
        'package_date'=>$faker->date,
        'package_description'=>$faker->sentence,
        'package_amount' => $faker->randomFloat(3,2,150),
        'created_at' => now(),
        'updated_at' => now(),
        
    ];
});
