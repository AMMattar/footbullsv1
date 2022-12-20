<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PlayersData;

class PlayersDataController extends Controller
{
    //
    public function index(Request $request)
    {   
        return PlayersData::all();
    }

    public function store(Request $request)
    {
        PlayersData::create($request->all());
        return 'player added succssefully';
    }
}
