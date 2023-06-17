<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use App\Models\Entities\Research;
use App\Models\Entities\Student;
use App\Models\Entities\StudyProgram;

class Supervised extends Component
{
    
    protected $listeners = ['selectContent' => 'render'];
    public function render()
    {
        $researchs = Research::take(5)->get();        
        $students = Student::take(5)->get();
        $kodes = StudyProgram::take(5)->get();

        return view('livewire.past.supervised', [
            'researchs' => $researchs,
            'students' => $students,
            'kodes' => $kodes            
        ]);
        // dd($kodes);
    }
}
