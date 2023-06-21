<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use App\Models\Entities\Student;
use Illuminate\Http\Request;

class Search extends Component
{
    public $search = null;
    public $pageOne, $pageTwo = null;
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

    public function setPageOne()
    {
        $this->pageOne = true;
    }
    public function setPageTwo()
    {
        $this->pageTwo = true;
        return view('livewire.past.pre');
    }

    // public function mount()
    // {
    //     $this->students = Student::all();     
    // }
   
}
