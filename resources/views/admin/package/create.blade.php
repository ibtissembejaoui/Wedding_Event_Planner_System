@extends('layouts.app')

@section('title', 'New Package')

@section('content')
<main role="main">
<div class="container">
    <fieldset>
    <div class="text-center">
		  <span class="subheading text-dark"><b><i>New</i></b></span>
		<h2 class="mb-4 text-dark"><i>Package</i></h2>
	  </div>
        <form action="{{ route('package.store') }}" method="post" enctype="multipart/form-data">
            @csrf
                <div class="form-group">
                  <label for="package_type">Package Name</label>
                    <input type="text" name="package_type" value="{{ old('package_type') }}" id="package_type" class="form-control" placeholder="Package's name goes here" >
                  @error('package_type')<div class="text-danger">{{ $message }}</div> @enderror
                </div>
                <div class="form-group">
                  <label for="package_description">Package Description</label>
                  <input class="form-control" name="package_description" value="{{ old('package_description') }}" id="description" placeholder="">
                  @error('package_description')<div class="text-danger">{{ $message }}</div> @enderror
                </div>
                <div class="row">
                  <div class="col">
                      <div class="form-group">
                        <label for="photo">Picture</label>
                        <input type="file" name="photo" value="{{ old('photo') }}" id="photo"
                         class="form-control" placeholder="">
                        @error('photo')<div class="text-danger">{{ $message }}</div> @enderror
                      </div>
                  </div>

                  <div class="col">
                    <div class="form-group">
                      <label for="package_date">package_date</label>
                      <input type="date" name="package_date" value="{{ old('package_date') }}" id="package_date" class="form-control">
                      @error('package_date')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                  </div>

                  <div class="col">
                    <div class="form-group">
                      <label for="package_amount">Package Amount</label>
                      <input type="number" name="package_amount" value="{{ old('package_amount') }}" id="package_description" class="form-control" placeholder="" >
                      @error('package_amount')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                  </div>
                  
                </div>
                <br>
                <div class="btn-group float-right">
                <button type="submit" class="btn btn-lg btn-danger">Save</button>&nbsp;
                <button type="reset" class="btn btn-lg btn-secondary">Cancel</button>
                </div>
        </form>
    </fieldset>
@endsection