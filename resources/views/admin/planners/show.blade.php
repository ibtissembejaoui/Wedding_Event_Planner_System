@extends('layouts.app')

@section('content')

@if (session('UpdatePlanner'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
    {{ session('UpdatePlanner') }}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif

<div class="container">
<div class="card mb-3">
  <img src="{{ $planner->photo }}" class="card-img-top" alt="{{ $planner->name }}">
  <div class="card-body">
    <h5 class="card-title">{{ $planner->name }}</h5>
    <p class="card-text">
            <ul>
                <li>
                    <strong>Phone : </strong>{{ $planner->phone }}
                </li>
                <li>
                    <strong>Email : </strong>{{ $planner->email }}
                </li>
                <li>
                    <strong>Address : </strong>{{ $planner->adress }}
                </li>
                
            </ul>
        </p>
        <div class="btn-group">
    <a href="{{ route('planner.edit', $planner->id) }}" class="btn btn-sm btn-danger">Edit</a>&nbsp;
    <a href="#" class="btn btn-sm btn-secondary" data-toggle="modal" data-target="#confirmDeleteModal">Delete</a>
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="confirmDeleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Delete Planner</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          Are you sure to delete this planner ?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-outline-danger"
            onclick="event.preventDefault();
            document.querySelector('#delete-booking-form').submit();">Confirm delete</button>
        </div>
        <form id="delete-booking-form" action="{{ route('planner.destroy', $planner->id) }}" method="POST" style="display: none;">
            @csrf
            @method('DELETE')
        </form>
      </div>
      
</div>
@endsection