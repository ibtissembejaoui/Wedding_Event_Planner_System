@extends('layouts.app')

@section('title', 'My planners')

@section('content')

@if (session('AddPlanner'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
    {{ session('AddPlanner') }}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif

@if (session('UpdatePlanner'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
    {{ session('UpdatePlanner') }}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
@endif

<main role="main">
<div class="container">
    <a href="{{ route('planner.create') }}" class="btn btn-success float-right" role="button" 
    aria-pressed="true">Add </a>
    <div class="text-center">
		  <span class="subheading text-dark"><b><i>List</i></b></span>
		<h2 class="mb-4 text-dark"><i>Of Planners</i></h2>
	  </div>
    <table class="table table-hover bg-white">
    <thead style="color: red">
      <tr>
        <th>Id</th>
        <th>Photo</th>
        <th>Name</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Address</th>
        <th>Operations</th>
      </tr>
    </thead>
    <tbody style="color: black">
    @foreach($planners as $planner)
    <tr>
    <td>{{ $planner->id }}</td>
    <td><img src="{{ $planner->photo }}" width="100px"/></td>
    <td>{{ $planner->name }}</td>
    <td>{{ $planner->phone }}</td>
    <td>{{ $planner->email }}</td>
    <td>{{ $planner->adress }}</td>
    <td><div class="btn-group">
    <a href="{{ route('planner.show', $planner->id) }}" class="btn btn-sm btn-info">Details</a>&nbsp;
    </div></td>
    </tr>
    @endforeach
    </tbody>
  </table>
   
</main>
@endsection

