@extends('main/layout')

@section('content')
<h1>The superheroes list</h1>

@foreach ($all_heroes as $hero)
<div>
    <h4>{{$hero->name}}</h4>
    <p>{{$hero->story}}</p>
    @foreach ($hero->images as $image)
    <img src="{{$image->path}}" alt="{{$hero->name}}" style="width: 256px; height: auto;">
    @endforeach
</div>
@endforeach

@endsection