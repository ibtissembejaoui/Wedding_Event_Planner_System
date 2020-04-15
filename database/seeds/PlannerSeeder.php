<?php

use App\Planner;
use Illuminate\Database\Seeder;

class PlannerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Planner::class, 30)->create();
    }
}
