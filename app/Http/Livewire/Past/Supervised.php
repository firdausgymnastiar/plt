<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use App\Models\Entities\Research;

class Supervised extends Component
{
    public function render()
    {
        return view('livewire.past.supervised', [
            'researchs' => Research::paginate(5)
        ]);
    }
}
