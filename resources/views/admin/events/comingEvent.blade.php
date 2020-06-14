@extends('layouts.app')

@section('title', 'My planners')

@section('content')


<main role="main">
<div class="container">
    <div class="text-center">
		  <span class="subheading text-dark"><b><i>List</i></b></span>
		<h2 class="mb-4 text-dark"><i>Of Coming Events </i></h2>
	  </div>
    <table class="table table-hover bg-white">
    <thead style="color: red">
      <tr>
        <th>Id</th>
        <th>User Name</th>
        <th>User Email</th>
        <th>User Phone</th>
        <th>Event Type</th>
        <th>Event Time</th>
        <th>Event Date</th>
        <th>Event PLace</th>
        <th>Event Decor</th>
        <th>Event Food</th>
        <th>Guests Nummber</th>
      </tr>
    </thead>
    <tbody style="color: black">
    @foreach($comingevents as $event)
    <tr>
    <td>{{ $event->id }}</td>
    <td>{{  $event->user->name }}</td>
    <td>{{  $event->user->phone }}</td>
    <td>{{  $event->user->email }}</td>
    <td>{{ $event->event_type }}</td>
    <td>{{ $event->event_time }}</td>
    <td>{{ $event->event_date }}</td>
    <td>{{ $event->event_place }}</td>
    <td>{{ $event->event_deco }}</td>
    <td>{{ $event->event_food }}</td>
    <td>{{ $event->guests_number}}</td>   
    </tr>
    @endforeach
    </tbody>
  </table>

</main>
@endsection

