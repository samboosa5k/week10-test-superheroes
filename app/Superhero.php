<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Superhero extends Model
{
    public function images()
    {
        return $this->belongsToMany('App\Image', 'superhero_image');
    }
}
