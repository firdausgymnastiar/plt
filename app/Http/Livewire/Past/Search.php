<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use App\Models\Entities\Student;

class Search extends Component
{
    public $search = null;
    public $students;
    public function render()
    {
        return view('livewire.past.search');
    }

    public function setContent()
    {
        $this->search = true;
    }

    public function mount()
    {
        $this->students = Student::all();     
    }

   
}
