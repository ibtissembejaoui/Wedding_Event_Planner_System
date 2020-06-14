@extends('layouts.app')

@section('content')

    
        

<section class="jumbotron text-center">
    <div class="container">
        <div class="banner_content text-center">
        <div class="main_title">
            <img src="img/shap-1.png" alt="">
            <h2>Our Packages</h2>
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
            <img src="{{ $package->photo }}" class="bd-placeholder-img card-img-top" width="100%" height="225" role="img" aria-label="Placeholder: Thumbnail">
                
                <div class="card-body">
                <h3 class="card-title">{{$package->package_type}}</h3>
                <p class="card-text">{{$package->package_description}}</p>
                <div class="d-flex justify-content-between align-items-center">
               
                    
                    
                    <small class="text-muted">{{$package->package_amount}}</small>
                </div>
                </div>
            </div>
            </div>
        @endforeach

      </div>
    </div>
  </div>
@endsection