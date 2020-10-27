<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MainLandmark extends Model
{
    //

    public function sublandmark(){
        return $this->hasMany(SubLandmark::class,"landmark_id");     
    }
}
