<?php

namespace App\Models\Plt;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Announcement extends Model
{
    use HasFactory;
    protected $fillable = [
        'title','body'
    ];
    protected $table = 'arsys_announcement';

    public function authors()
    {
        return $this->hasMany(AnnouncementAuthor::class, 'announcement_id', 'id');
    }
}
