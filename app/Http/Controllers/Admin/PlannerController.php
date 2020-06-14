<?php

namespace App\Http\Controllers\Admin;

use App\Planner;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class PlannerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $planners = Planner::all();
        return view('admin/planners.index', compact('planners'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin/planners.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate($this->validationRules());

        $planner = new Planner;

        $planner->name = $request->name;
        $planner->photo = $request->photo;
        $planner->phone = $request->phone;
        $planner->email = $request->email;
        $planner->adress = $request->adress;

        $planner->save();

        return redirect()->route('planner.index')->with('AddPlanner', 'New planner was added successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Planner  $planner
     * @return \Illuminate\Http\Response
     */
    public function show(Planner $planner)
    {
        return view('admin/planners.show', compact('planner'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Planner  $planner
     * @return \Illuminate\Http\Response
     */
    public function edit(Planner $planner)
    {
        return view('admin/planners.edit', compact('planner'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Planner  $planner
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Planner $planner)
    {
        $validatedData = $request->validate($this->validationRules());

        $planner->update($validatedData);

        return redirect()->route('planner.index', $planner->id)->with('UpdatePlanner', 'Planner updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Planner  $planner
     * @return \Illuminate\Http\Response
     */
    public function destroy(Planner $planner)
    {
        $planner->delete();

        return redirect()->route('planner.index')->with('deletePlanner', 'Planner deleted successfully');
    }

    private function validationRules()
    {
        return [
            'name' => 'required',
            'phone' => 'required',
            'photo' => 'required',
            'email' => 'required',
            'adress' => 'required'
        ];
    }
}
