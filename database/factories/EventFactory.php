<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Event;
use App\User;
use Faker\Generator as Faker;

$factory->define(Event::class, function (Faker $faker) {
    return [
        
        'user_id'=> User::get('id')->random(),
        'event_type'=>$faker->word,
        'event_date'=>$faker->date,
        'event_time'=>$faker->time,
        'event_place'=>$faker->word,
        'event_deco'=>$faker->word,
        'event_food'=>$faker->word,
        'guests_number'=>$faker->randomDigitNotNull,
        'created_at'=>now(),
        'updated_at'=>now(),
    ];
});
