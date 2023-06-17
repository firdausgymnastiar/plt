<?php

namespace App\Http\Livewire\Past;

use Illuminate\Queue\Listener;
use Livewire\Component;
use App\Models\Entities\Research;
use App\Models\ArSys\StaffStatus;

class Content extends Component
{
    public $pageOne, $pageTwo = null;
    
    public function render()
    {
        return view('livewire.past.content', [
            'researchs' => Research::paginate(5)
        ]);
    }
    public function setPageOne()
    {
        $this->pageOne = true;
    }
    public function setPageTwo()
    {
        $this->pageTwo = true;
    }
}
