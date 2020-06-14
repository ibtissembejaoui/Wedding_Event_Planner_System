@extends('layouts.app')

@section('content')

@if (session('updateEvent'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
    {{ session('updateEvent') }}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif

<main role="main">
<div class="container">

<div class="text-center">
		  <span class="subheading text-dark"><b><i>Your</i></b></span>
		<h2 class="mb-4 text-dark"><i>Event</i></h2>
	  </div>
<br>
    <table class="table table-hover bg-white">
    <thead style="color: red">
      <tr>
        <th>Event type</th>
        <th> Date</th>
        <th> Time</th>
        <th> Place</th>
        <th>Decoration</th>
        <th> Food</th>
        <th> Guests number </th>
        <th> Operations </th>
      </tr>
    </thead>
    <tbody style="color: black">
      <tr>
        <td> {{ $event->event_type}}</td>
        <td> {{ $event->event_date->format('d/m/Y') }}</td>
        <td> {{ date('H:i', strtotime($event->event_time))}}</td>
        <td> {{ $event->event_place}}</td>
        <td> {{ $event->event_deco}}</td>
        <td> {{ $event->event_food}}</td>
        <td> {{ $event->guests_number}}</td>
        <td>
            <a href="{{ route('event.edit', $event->id) }}" class="btn btn-sm btn-danger">Edit</a>
            <a href="#" class="btn btn-sm btn-secondary"  data-toggle="modal" data-target="#confirmDeleteModal">Delete</a>      
        </td>
      </tr>
    </tbody>
  </table>

<!-- Modal -->
<div class="modal fade" id="confirmDeleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Delete Event</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          Are you sure to delete your event ?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-outline-danger"
            onclick="event.preventDefault();
            document.querySelector('#delete-event-form').submit();">Confirm delete</button>
        </div>
        <form id="delete-event-form" action="{{ route('event.destroy', $event->id) }}" method="POST" style="display: none;">
            @csrf
            @method('DELETE')
        </form>
      </div>
    </div>
  </div>
  <!-- End Modal -->
@endsection