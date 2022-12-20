<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlayersDataMV extends Model
{
    use HasFactory;

    public $table = 'market_value';

    protected $fillable = [
        'mv_data',
        'player_id',
    ];

    /**
     * Relationship with players data.
     */
    public function players_name()
    {
        return $this->hasOne(PlayersData::class, 'id', 'player_id');
    }
}
