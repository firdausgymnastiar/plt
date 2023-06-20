<?php

namespace App\Http\Livewire\Plt\Announcement;

use Livewire\Component;
use App\Models\Plt\Announcement;
use App\Models\Plt\AnnouncementAuthor;
use Auth;
use App\Models\ArSys\Staff;
use App\Models\ArSys\StaffStatus;

class Add extends Component
{
    public $title, $body, $firstAuthor, $anotherAuthor, $staffs;
    public $othersAuthor = [];
    public $counter = 0;
    public function render()
    {
        return view('livewire.plt.announcement.add');
    }

    public function save()
    {
        Announcement::create([
            'title' => $this->title,
            'body' => $this->body
        ]);
        $announcementId = Announcement::latest()->first()->id;
        AnnouncementAuthor::create([
            'announcement_id' => $announcementId,
            'author_id' => Auth::user()->faculty->id
        ]);

        foreach($this->othersAuthor as $authorId) {
            AnnouncementAuthor::create([
                'announcement_id' => $announcementId,
                'author_id' => $authorId
            ]);
        }

        $this->title = '';
        $this->body = '';
        $this->anotherAuthor = '';
        $this->othersAuthor = [];
        // $this->emit('reloadAnotherAuthor');
        // $this->emit('refresh_Announcement_List');
    }

    public function mount()
    {
        if(Auth::user()->sso_username >= 9){
            $this->firstAuthor = Auth::user()->faculty->first_name.' '.Auth::user()->faculty->last_name;
        }else {
            $this->firstAuthor = Auth::user()->student->first_name.' '.Auth::user()->student->last_name;
        }

        // dd($this->firstAuthor);

        $this->staffs = Staff::where('status_id', StaffStatus::where('abbrev', 'ACT')->first()->id)->get();
        // dd($this->staffs);a

    }

    public function addAnotherAuthor()
    {
        // dd($this->anotherAuthor);
        $this->othersAuthor[$this->counter] = $this->anotherAuthor;
        $this->counter++;
    }

}
