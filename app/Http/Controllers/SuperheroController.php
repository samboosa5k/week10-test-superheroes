<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Superhero;
use App\Emergency;

class SuperheroController extends Controller
{
    public function index()
    {
        $all_heroes = Superhero::with('images')->orderBy('name', 'ASC')->get();
        //return $all_heroes;
        return view('superhero.index', compact('all_heroes'));
    }

    public function show($superhero_slug)
    {
        $superhero = \App\Superhero::where('slug', $superhero_slug)->first();

        // dd($superhero);

        if (!$superhero) {
            abort(404, 'Superhero not found');
        }

        $view = view('superhero/show');
        $view->superhero = $superhero;
        return $view;
    }

    public function store(Request $request)
    {
        $newEmergency = new Emergency();

        $newEmergency->superhero_id = $request->input('superhero_id');
        $newEmergency->subject = $request->input('subject');
        $newEmergency->description = $request->input('description');


        $newEmergency->save();

        return redirect('/superhero');
    }
}
