@extends('main/layout')

@section('content')
<div class="page page-home">
    
    <img src="img/avengers-logo.png" alt="" class="logo">
    <h1>Avengers<br><small>Superhero assignment</small></h1>

    <div class="desc">
        Is there a villain to be fought? Someone wearing a nice golden glove perhaps? Call in a superhero and your problems are as good as solved.
    </div>

    <a href="#" class="report">Call a superhero</a>

    <div class="superheroes">
        <a href="#">
            <img src="img/ironman.jpg" alt="">
        </a>
        <a href="#">
            <img src="img/captainamerica.jpg" alt="">
        </a>
        <a href="#">
            <img src="img/hulk.jpg" alt="">
        </a>
        <a href="#">
            <img src="img/blackwidow.jpg" alt="">
        </a>
        <a href="#">
            <img src="img/thor.jpg" alt="">
        </a>
    </div>

</div>
@endsection
