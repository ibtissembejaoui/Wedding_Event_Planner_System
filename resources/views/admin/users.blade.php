@extends('layouts.app')

@section('title', 'My Users')

@section('content')

<main role="main">
<div class="container">
    <div class="text-center">
		  <span class="subheading text-dark"><b><i>List</i></b></span>
		<h2 class="mb-4 text-dark"><i>Of Users</i></h2>
	  </div>
    <table class="table table-hover bg-white">
    <thead style="color: red">
      <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Address</th>
        <th>Password</th>
      </tr>
    </thead>
    <tbody style="color: black">
    @foreach($users as $user)
    <tr>
    <td>{{ $user->id }}</td>
    <td>{{ $user->name }}</td>
    <td>{{ $user->phone }}</td>
    <td>{{ $user->email }}</td>
    <td>{{ $user->adress }}</td>
    <td>{{ $user->password }}</td>
    </tr>
    @endforeach
    </tbody>
  </table>
   
</main>
@endsection

