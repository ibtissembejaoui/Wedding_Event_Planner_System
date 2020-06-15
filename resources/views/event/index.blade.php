@extends('layouts.app')

@section('title', 'My events')

@section('content')
<main role="main">
<div class="container">
    <fieldset>
    <div class="text-center">
		  <span class="subheading text-dark"><b><i>My</i></b></span>
		<h2 class="mb-4 text-dark"><i>Events</i></h2>
</div>
<br>
@if (session('AddEvent'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
    {{ session('AddEvent') }}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif

@if (session('deleteEvent'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
    {{ session('deleteEvent') }}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif
<a href="{{ route('event.create') }}" class="btn btn-outline-primary btn-lg float-right" role="button" aria-pressed="true">Add event now !</a>
    <h1>List of my events</h1>
    <div class="row">
      <div class="col">
        <h3>Upcoming events</h3>
          <ul class="list-group">
            @foreach($comingEvents as $event)
            <a href="{{ route('event.show', $event->id) }}">
                <li class="list-group-item list-group-item-action">
                  Your <strong>{{ $event->event_type }}</strong> will be for the <strong>{{ $event->event_date->format('d/m/Y') }}</strong> at
                  <strong>{{ date('H:i', strtotime($event->event_time) ) }}</strong>
                  <span class="badge badge-primary badge-pill float-right">{{ $event->guests_number }} persons</span>
                </li>
            </a>
            @endforeach
          </ul>
      </div>
      <div class="col">
        <h3>Passed events</h3>
          <ul class="list-group">
            @foreach($passedEvents as $event)
                 <li class="list-group-item list-group-item-action">
                 Your <strong>{{ $event->event_type }}</strong> was for the <strong> {{ $event->event_date->format('d/m/Y')}} </strong> at
                  <strong>{{ date('H:i', strtotime ($event->event_time) ) }}</strong>
                 <span class="badge badge-primary badge-pill float-right">{{ $event->guests_number }} persons</span>
                 </li>
            @endforeach
          </ul>
      </div>    
    </div>
@endsection