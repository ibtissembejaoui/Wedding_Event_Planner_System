@extends('layouts.app')

@section('content')
    <!--<div class="display-3 text-center">
        welcome in Wedding_Event_System
    </div>
    -->
    
    
            
    <div class="card" style="width: 38rem;">

      <img class="card-img-top" src="{{ asset('storage/'. $package->photo) }}" width="100px" alt="{{ $package->package_type }}">
        <div class="card-body">
            <h5 class="card-title">{{ $package->package_type }}</h5>
            <p class="card-text">
                <ul>
                    <li>
                    <strong>Description: </strong>{{ $package->package_description }}
                </li>
                <li>
                    <strong>Date of Package: </strong>{{ $package->package_date }}
                </li>
                <li>
                    <strong>Buy price: </strong>{{ $package->package_amount }}
                </li>
            </ul>
          </p>
          @admin
          <a href="{{ route('package.edit', $package->id) }}" class="btn btn-outline-success">Edit</a>
          <a href="#" class="btn btn-outline-danger" data-toggle="modal" data-target="#confirmDeleteModal">Delete</a>
         @else
         <a href="{{ route('package.store', $package->id) }}" class="btn btn-outline-primary btn-block" >Book this Package</a>
          @endadmin
    </div>
  </div>


<!-- Modal -->
<div class="modal fade" id="confirmDeleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Delete Package</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          Are you sure to delete this package ?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-outline-danger"
            onclick="event.preventDefault();
            document.querySelector('#delete-booking-form').submit();">Confirm delete</button>
        </div>
        <form id="delete-booking-form" action="{{ route('package.destroy',$package->id) }}" method="POST" style="display: none;">
            @csrf
            @method('DELETE')
        </form>
      </div>
    </div>
  </div>




@endsection