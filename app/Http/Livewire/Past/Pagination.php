<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;

class Pagination extends Component
{
    public $pageOne, $pageTwo = null;
    public function render()
    {
       
            return view('livewire.past.pagination');
       
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
