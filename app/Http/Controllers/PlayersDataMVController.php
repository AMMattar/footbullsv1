<?php

namespace App\Http\Controllers;

use App\Models\PlayersDataMV;
use Illuminate\Http\Request;

class PlayersDataMVController extends Controller
{
    //
    public function index(Request $request)
    {   
        return PlayersDataMV::all();
        //$data->mv_data = json_decode($data->mv_data);
        //return $data[0]->id;
    }

    public function store(Request $request)
    {
        $player = new PlayersDataMV();
        $player->player_id = $request->player_id;
        $player->mv_data = json_encode($request->mv_data);
        $player->save();
        return 'data added succssefully';
    }

    public function show($id)
    {
        return PlayersDataMV::find($id);
    }
}
