@component('mail::message')
# Event-Wedding-Planner

Dear **{{ Auth::user()->name }}**

We are sending you this message to let you know that we recieved your request and look forward to response you as soon as possible .<br>

@component('mail::button', ['url' => route('event.show' , $event->id)])
See event details
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent

