@extends('layouts.app')

@section('title', 'New Package')

@section('content')
<div class="container">
    <fieldset>
    <div class="text-center">
		  <span class="subheading text-dark"><b><i>New</i></b></span>
		<h2 class="mb-4 text-dark"><i>Package</i></h2>
	  </div>
        <form action="{{ route('packages.store') }}" method="post" enctype="multipart/form-data">
            @csrf
                <div class="form-group row">
                  <label for="package_type"class="col-sm-2 col-form-label"><b><i>Package Name :</i></b></label>
                  <div class="col-sm-10">
                    <input type="text" name="package_type" value="{{ old('package_type') }}" id="package_type" class="form-control" placeholder="Package's name goes here" >
                  @error('package_type')<div class="text-danger">{{ $message }}</div> @enderror
                </div>
                </div>
                <div class="form-group row">
                  <label for="package_description" class="col-sm-2 col-form-label"><b><i>Package Description :</i></b></label>
                  <input  type="text" class="form-control" name="package_description" value="{{ old('package_description') }}" id="description" placeholder="">
                  @error('package_description')<div class="text-danger">{{ $message }}</div> @enderror
                </div>
                <div class="row">
                  <div class="col">
                      <div class="form-group">
                        <label for="photo" class="col-sm-2 col-form-label"><b><i>Image</i></b></label>
                        <input type="file" name="photo" value="{{ old('photo') }}" id="photo" class="form-control" placeholder="Package's photo goes here" >
                        @error('photo')<div class="text-danger">{{ $message }}</div> @enderror
                      </div>
                  </div>

                  <div class="col">
                    <div class="form-group">
                      <label for="package_date" class="col-sm-2 col-form-label"><b><i> Package_date</i></b></label>
                      <input type="date" name="package_date" value="{{ old('package_date') }}" id="package_date" class="form-control">
                      @error('package_date')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                  </div>

                  <div class="col">
                    <div class="form-group">
                      <label for="package_amount" class="col-sm-2 col-form-label"><b><i>Package_Amount</i></b></label>
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