@extends('layouts.app')

@section('content')
    <!--<div class="display-3 text-center">
        welcome in Wedding_Event_System
    </div>
    -->
    
    <main role="main">
  

    <section class="jumbotron text-center">
      <div class="container">
        <h1>List of your Packages</h1>
      </div>
    </section>

    <div class="row">
      <div class="col">
        <ul class="list-group">
          @foreach($packages as $package)
            <a href="#">
                <li class="list-group-item list-group-item-action">
                  <strong>{{$package->package_type}}</strong>
            </a>
                  will be for the <strong>{{ $package->package_date->format('d/m/Y') }}</strong>
                </li>
            
          @endforeach
        </ul>
      </div>
    </div>

   

</main>
@endsection