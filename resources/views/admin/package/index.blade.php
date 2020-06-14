@extends('layouts.app');

@section('content')
    <!--<div class="display-3 text-center">
        welcome in Wedding_Event_System
    </div>
    -->
    @if (session('AddPackage'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('AddPackage') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    @endif
   
    @if (session('updatePackage'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('updatePackage') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    @endif
    
    @if (session('deletePackage'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('deletePackage') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    @endif

    <main role="main">
    @admin


    
    <section class="jumbotron text-center">
      <div class="container">
        <h1>List of our Packages</h1>
      </div>
    </section>
    <table class="table table-hover">
    <thead>
        <tr>
            <th>Id</th>
            <th>Type</th>
            <th>Date</th>
            <th>Description</th>
            <th>Amount</th>
            <th>Operations</th>
        </tr>
    </thead>
    <tbody>
    @foreach($packages as $package)
        <tr>
            <td>{{ $package->id }}</td>
            <td> {{ $package->package_type}}</td>
            <td> {{ $package->package_date->format('d/m/Y') }}</td>
            <td> {{ $package->package_description }}</td>
            <td> {{ $package->package_amount }} £</td>
            <td>
                <a href="{{ route('packages.show', $package->id) }}" class="btn btn-outline-info">Details</a>
            </td>
        </tr>
    @endforeach
    </tbody>
  </table>
    
@else


<section class="jumbotron text-center">
    <div class="container">
        <div class="banner_content text-center">
        <div class="main_title">
            <img src="img/shap-1.png" alt="">
            <h2>Our Package</h2>
				</div>
        </div>
    </div>
</section>

<div class="album py-5 bg-light">
    <div class="container">

      <div class="row" >
        
        @foreach($packages as $package)
            <div class="col-md-4">
            <div class="card mb-4 shadow-sm">
            <img src="{{ $package->photo }}" class="bd-placeholder-img card-img-top" 
            width="100%" height="225" aria-label="Placeholder: Thumbnail">
                
                <div class="card-body">
                <h3 class="card-title">{{$package->package_type}}</h3>
                <p class="card-text">{{$package->package_description}}</p>
                <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                    <a href="{{ route('packages.show', $package->id) }}" class="btn btn-sm btn-outline-secondary">View</a>
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


@endadmin
</main>

@endsection