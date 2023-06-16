<?php

namespace App\Http\Livewire\Plt;

use Livewire\Component;

class Menu extends Component
{
    public function render()
    {
        return view('livewire.plt.menu');
    }

    public function setMenu($selection)
    {
        $this->emit('setMenu_PLT', $selection);
    }
}
