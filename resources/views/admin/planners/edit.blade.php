@extends('layouts.app')

@section('title', 'Edit Planner')

@section('content')
<main role="main">
<div class="container">
    <fieldset>
    <div class="text-center">
		  <span class="subheading text-dark"><b><i>Edit</i></b></span>
		<h2 class="mb-4 text-dark"><i>Planner</i></h2>
	  </div>
        <form action="{{ route('planner.update', $planner->id) }}" method="post">
            @csrf
            @method('PATCH')
                    <div class="form-group row">
                      <label for="name" class="col-sm-2 col-form-label"><b><i>Name :</i></b></label>
                      <div class="col-sm-10">
                      <input type="text" name="name" value="{{ old('name') ?? $planner->name }}"
                       id="name" class="form-control" placeholder="enter name" >
                       @error('name')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                    </div>
                    <div class="form-group row">
                      <label for="photo" class="col-sm-2 col-form-label"><b><i>Picture :</i></b></label>
                      <div class="col-sm-10">
                      <input type="file" name="photo" value="{{ old('photo') ?? $planner->photo }}" 
                      id="photo" class="form-control" placeholder="" >
                       @error('photo')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                    <div class="form-group row">
                      <label for="phone" class="col-sm-2 col-form-label"><b><i>Phone :</i></b></label>
                      <div class="col-sm-10">
                      <input type="tel" name="phone" value="{{ old('phone') ?? $planner->phone }}" id="phone" class="form-control" placeholder="enter phone" >
                       @error('phone')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                    <div class="form-group row">
                      <label for="email" class="col-sm-2 col-form-label"><b><i>Email :</i></b></label>
                      <div class="col-sm-10">
                      <input type="email" name="email" value="{{ old('email') ?? $planner->email }}" id="email" class="form-control" placeholder="enter email" >
                       @error('email')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                    <div class="form-group row">
                      <label for="adress" class="col-sm-2 col-form-label"><b><i>Address :</i></b></label>
                      <div class="col-sm-10">
                      <input type="text" name="adress" value="{{ old('adress') ?? $planner->adress }}" id="adress" class="form-control" placeholder="enter address" >
                       @error('adress')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <div class="btn-group float-right">
                <button type="submit" class="btn btn-lg btn-danger">Save</button>&nbsp;
                <button type="reset" class="btn btn-lg btn-secondary">Cancel</button>
                </div>
        </form>
    </fieldset>
    </div>
    </main>
@endsection