<?php

namespace App\Http\Livewire\Past;

use Illuminate\Queue\Listener;
use Livewire\Component;

class Content extends Component
{
    public $pageOne, $pageTwo = null;
    
    public function render()
    {
        return view('livewire.past.content');
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
