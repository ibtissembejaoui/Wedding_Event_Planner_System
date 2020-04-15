@extends('layouts.app');

@section('content')
    <!--<div class="display-3 text-center">
        welcome in Wedding_Event_System
    </div>
    -->
    <main role="main">

  <section class="jumbotron text-center">
    <div class="container">
      <h1>Our Packages</h1>
    </div>
  </section>

  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row">
        
        @foreach($packages as $package)
            <div class="col-md-4">
            <div class="card mb-4 shadow-sm">
            <img src="{{ $package->photo }}" class="bd-placeholder-img card-img-top" width="100%" height="225" role="img" aria-label="Placeholder: Thumbnail">
                
                <div class="card-body">
                <h3 class="card-title">{{$package->package_type}}</h3>
                <p class="card-text">{{$package->package_description}}</p>
                <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                    </div>
                    <small class="text-muted">{{$package->package_amount}}</small>
                </div>
                </div>
            </div>
            </div>
        @endforeach

      </div>
    </div>
  </div>

</main>
@endsection