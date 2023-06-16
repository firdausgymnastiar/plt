<?php

namespace App\Http\Livewire\Plt\Announcement;

use Livewire\Component;
use App\Models\Plt\Announcement;

class Lists extends Component
{
    // protected $listeners = ['refresh_Announcement_Lists'];
    public function render()
    {
        $announcements = Announcement::all();
        return view('livewire.plt.announcement.lists', ['announcements' => $announcements]);
    }

    // public function refresh_Announcement_Lists()
    // {
    //     $this->render();
    // }

    public function delete($announcementId)
    {
        $announcement = Announcement::find($announcementId)->delete();
        
    }
}
