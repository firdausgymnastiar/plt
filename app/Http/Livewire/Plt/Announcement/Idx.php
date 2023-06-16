<?php

namespace App\Http\Livewire\Plt\Announcement;

use Livewire\Component;

class Idx extends Component
{
    public $addAnnouncement = false;
    public $announcementId = null;
    public $editEnable = false;
    protected $listeners = ['addAnnouncement_Disable', 'announcementEdit_Enable', 'announcementEdit_Disable'];

    public function render()
    {
        return view('livewire.plt.announcement.idx');
    }

    public function addAnnouncement_Enable()
    {
        $this->addAnnouncement = true;
    }

    public function addAnnouncement_Disable()
    {
        $this->addAnnouncement = false;
    }

    public function announcementEdit_Enable($announcementId)
    {
        $this->editEnable = true;
        $this->announcementId = $announcementId;
    }

    public function announcementEdit_Disable()
    {
        $this->editEnable = false;

    }

}
