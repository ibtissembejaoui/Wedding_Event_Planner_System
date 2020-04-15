@extends('layouts.app')

@section('title', 'My planners')

@section('content')
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
    <button type="submit" class="btn btn-sm btn-danger">Edit</button>&nbsp;
    <button type="reset" class="btn btn-sm btn-secondary">Delete</button>
    </div></td>
    </tr>
    @endforeach
    </tbody>
  </table>
</main>
@endsection

