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
    <fieldset>
    <div class="text-center">
		  <span class="subheading text-dark"><b><i>Event</i></b></span>
		<h2 class="mb-4 text-dark"><i>Details</i></h2>
</div>
<br>

<table class="table table-hover">
    <thead>
      <tr>
        <th scope="col">Event type</th>
        <th scope="col"> Date</th>
        <th scope="col"> Time</th>
        <th scope="col"> Place</th>
        <th scope="col">Decoration</th>
        <th scope="col"> Food</th>
        <th scope="col"> Guests number </th>
        <th scope="col"> Operations </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td> {{ $event->event_type}}</td>
        <td> {{ $event->event_date->format('d/m/Y') }}</td>
        <td> {{ date('H:i', strtotime($event->event_time))}}</td>
        <td> {{ $event->event_place}}</td>
        <td> {{ $event->event_deco}}</td>
        <td> {{ $event->event_food}}</td>
        <td> {{ $event->guests_number}}</td>
        <td>
            <a href="{{ route('event.edit', $event->id) }}" class="btn btn-outline-info">Edit</a>
            <a href="#" class="btn btn-outline-danger"  data-toggle="modal" data-target="#confirmDeleteModal">Delete</a>      
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