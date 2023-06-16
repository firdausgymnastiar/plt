<?php

namespace App\Http\Livewire\Plt;

use Livewire\Component;

class Content extends Component
{
    public $content = null;
    protected $listeners = ['setMenu_PLT'];
    public function render()
    {
        return view('livewire.plt.content');
    }

    public function setMenu_PLT($selection)
    {
        $this->content =$selection;
    }
}
