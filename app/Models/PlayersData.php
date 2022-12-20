<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlayersData extends Model
{ 
    use HasFactory;

    public $table = 'players_data';

    protected $fillable = [
        'player_name',
    ];
}
