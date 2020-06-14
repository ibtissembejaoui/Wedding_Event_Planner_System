@extends('layouts.app')

@section('title', 'About confirmation')

@section('content')

    <div class="row">
      <div class="col">
        <h3>Confirmed events</h3>
          <ul class="list-group">
            @foreach($confirmedEvents as $event)
            <a href="{{ route('event.show', $event->id) }}">
                <li class="list-group-item list-group-item-action">
                  <strong>{{ $event->event_type }}</strong> Date: <strong>{{ $event->event_date->format('d/m/Y') }}</strong> at
                  <strong>{{ date('H:i', strtotime($event->event_time) ) }}</strong>
                  <span class="badge badge-primary badge-pill float-right">{{ $event->guests_number }} persons</span>
                </li>
            </a>
            @endforeach
          </ul>
      </div>
      <div class="col">
        <h3>Events not yet confirmed</h3>
          <ul class="list-group">
            @foreach($notyetconfirmedEvents as $event)
                 <li class="list-group-item list-group-item-action">
                  <strong>{{ $event->event_type }}</strong> Date <strong> {{ $event->event_date->format('d/m/Y')}} </strong> at
                  <strong>{{ date('H:i', strtotime ($event->event_time) ) }}</strong>
                 <span class="badge badge-primary badge-pill float-right">{{ $event->guests_number }} persons</span>
                 </li>
            @endforeach
          </ul>
      </div>    
    </div>
    @endsection


