@extends('layouts.app')

@section('title', 'New event')

@section('content')
    <fieldset>
        <legend>New event</legend>
        <form action="{{ route('event.store') }}" method="post">
        @csrf
            <div class="row">
                <div class="col">
                    <div class="form-group">
                      <label for="event_type">Event type</label>
                      <input type="text" name="event_type" value="{{ old('event_type') }}" id="event_type" class="form-control">
                      @error('event_type')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="event_date"> Date</label>
                      <input type="date" name="event_date" value="{{ old('event_date') }}" id="event_date" class="form-control">
                      @error('event_date')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="event_time"> Time</label>
                      <input type="time" name="event_time"  value="{{ old('event_time') }}" id="event_time" class="form-control">
                      @error('event_time')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
              </div>
              <div class="row">
                <div class="col">
                    <div class="form-group">
                      <label for="event_place"> Place</label>
                      <input type="text" name="event_place"  value="{{ old('event_place') }}" id="event_place" class="form-control">
                      @error('event_place')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="event_deco">Decoration</label>
                      <input type="text" name="event_deco"  value="{{ old('event_deco') }}" id="event_deco" class="form-control">
                      @error('event_deco')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="event_food">Food</label>
                      <input type="text" name="event_food"  value="{{ old('event_food') }}" id="event_food" class="form-control">
                     @error('event_food')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="guests_number">Guests number</label>
                      <input type="number" name="guests_number" min="5" max="500" value="{{ old('guests_number') }}"  id="guests_number" class="form-control"> 
                      @error('guests_number')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
              </div>
            <div class="row">
                <button type="submit" class="btn btn-outline-primary btn-block">Add now !</button>
            </div>
        </form>
    </fieldset>
@endsection