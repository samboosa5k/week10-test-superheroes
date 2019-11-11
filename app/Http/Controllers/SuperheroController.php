<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SuperheroController extends Controller
{
    //
    public function show($superhero_slug)
    {
        $superhero = \App\Superhero::where('slug', $superhero_slug)->first();

        if (!$superhero) {
            abort(404, 'Superhero not found');
        }

        $view = view('superhero/show');
        $view->superhero = $superhero;
        return $view;
    }
}
