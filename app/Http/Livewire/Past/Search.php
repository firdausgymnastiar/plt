<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;

class Search extends Component
{
    public $search = null;
    public function render()
    {
        return view('livewire.past.search');
    }

    public function setContent()
    {
        $this->search = true;
    }
}
