<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use App\Models\Entities\Student;
use Illuminate\Http\Request;

class Search extends Component
{
    public $search = null;
    // public $students, $cari;
    public $searchQuery = '';
    // protected $queryString = ['cari'];
    public function render()
    {
        return view('livewire.past.search');

        ;
    }

    public function setContent()
    {
        $this->search = true; 
        // dd($this->searching);
        // $dicari = $this->searching;
        // $this->dicari = $cari;
        // $dicari = $this->cari;
        // $this->emit('searching', $dicari);
        // dd($cari);
        // dd($this->searchQuery);
        $this->emit('searchQueryUpdated', $this->searchQuery);

    }

    // public function mount()
    // {
    //     $this->students = Student::all();     
    // }
   
}
