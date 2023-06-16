<?php

namespace App\Models\Plt;

use App\Models\ArSys\Staff;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AnnouncementAuthor extends Model
{
    use HasFactory;
    protected $table = 'arsys_announcement_author';
    protected $fillable = ['announcement_id', 'author_id'];

    public function detail()
    {
        return $this->belongsTo(Staff::class, 'author_id', 'id');
    }
}
