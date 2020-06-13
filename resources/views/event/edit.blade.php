@extends('layouts.app')

@section('title', 'Edit Event')

@section('content')
    <fieldset>
        <legend>Edit your event</legend>
        <form action="{{ route('event.update', $event->id) }}" method="post">
            @csrf
            @method('PATCH')
            <div class="row">
                <div class="col">
                    <div class="form-group">
                      <label for="event_type"> Event type </label>
                        <input type="text" name="event_type" value="{{ old('event_type') ?? $event->event_type }} " id="event_type" class="form-control" >
                      @error('event_type')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="event_date"> Date</label>
                        <input type="date" name="event_date" value="{{ old('event_date') ?? $event->event_date->format('Y-m-d') }}" id="event_date" class="form-control">
                      @error('event_date')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="event_time"> Time</label>
                      <input type="time" name="event_time" value="{{ old('event_time') ?? $event->event_time }}" id="event_time" class="form-control">
                      @error('event_time')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="event_place">Place</label>
                      <input type="text" name="event_place"  value="{{ old('event_place') ?? $event->event_place }}" id="event_place" class="form-control">
                      @error('event_place')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="form-group">
                      <label for="event_deco"> Decoration </label>
                      <input type="text" name="event_deco"  value="{{ old('event_deco') ?? $event->event_deco }}" id="event_deco" class="form-control">
                      @error('event_deco')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="event_food"> Food </label>
                      <input type="text" name="event_food"  value="{{ old('event_food') ?? $event->event_food }}" id="event_food" class="form-control">
                      @error('event_food')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="guests_number">Guests number</label>
                      <input type="number" name="guests_number" min="5" max="500" value="{{ old('guests_number') ?? $event->guests_number}}" id="guests_number" class="form-control" placeholder="">
                      @error('guests_number')<div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
            </div>
            <div class="row">
                <button type="submit" class="btn btn-outline-primary btn-block">Confirm update</button>
            </div>
        </form>
    </fieldset>
@endsection