<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use App\Models\Entities\Student;

class Idx extends Component
{
    public function render()
    {
        return view('livewire.past.idx')->layout('adminlte::page');
    }
}
