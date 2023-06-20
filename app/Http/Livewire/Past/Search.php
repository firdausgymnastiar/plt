<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use App\Models\Entities\Student;
use Illuminate\Http\Request;

class Search extends Component
{
    public $search = null;
    public $searchQuery = '';
    public function render()
    {
        return view('livewire.past.search');

        ;
    }

    public function setContent()
    {
        $this->search = true; ;
        $this->emit('searchQueryUpdated', $this->searchQuery);

    }

    // public function mount()
    // {
    //     $this->students = Student::all();     
    // }
   
}
