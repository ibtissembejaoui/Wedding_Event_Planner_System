<?php

namespace App\Http\Controllers;

use App\Event;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Mail\NewEvent;


class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $comingEvents = Auth::user()->events()->comingEvents()->orderBy('event_date')->get();
        $passedEvents = Auth::user()->events()->passedEvents()->orderBy('event_date', 'desc')->get();
        return view('event.index', [
            'comingEvents' => $comingEvents,
            'passedEvents' => $passedEvents
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('event.create');
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

        $event = new  Event;

        $event->user_id = Auth::id();
        $event->event_type = $request->event_type;
        $event->event_date = $request->event_date;
        $event->event_time = $request->event_time;
        $event->event_place = $request->event_place;
        $event->event_deco = $request->event_deco;
        $event->event_food = $request->event_food;
        $event->guests_number = $request->guests_number;

        $event->save();
        
        Mail::to(Auth::user()->email)->send( new NewEvent ($event));
        return redirect()->route('event.index')->with('AddEvent', 'New event added successfully . We sent you an email, please check your inbox.');
        
    }
    

    /**
     * Display the specified resource.
     *
     * @param  \App\Booking  $event
     * @return \Illuminate\Http\Response
     */
    public function show(Event $event)
    {
        return view('event.show')->with('event', $event);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Booking  $event
     * @return \Illuminate\Http\Response
     */
    public function edit(Event $event)
    {
        return view('event.edit', compact('event'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Booking  $event
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Event $event)
    {
        $validatedData = $request->validate($this->validationRules());

        $event->update($validatedData);

        return redirect()->route('event.show', $event->id)->with('updateEvent', 'Event updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Booking   $event
     * @return \Illuminate\Http\Response
     */
    public function destroy(Event $event)
    {
        $event->delete();

        return redirect()->route('event.index')->with('deleteEvent', 'Event deleted successfully');
    }

    

    private function validationRules()
    {
        return [
            'event_type' =>  'required',
            'event_date' => 'required|date',
            'event_time' => 'required',
            'event_place'=> 'required',
            'event_deco' => 'required',
            'event_food' => 'required',
            'guests_number' => 'required'
        ];
    }


}