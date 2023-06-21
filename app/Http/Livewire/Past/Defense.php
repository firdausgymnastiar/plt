<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use Illuminate\Support\Facades\DB;

class Defense extends Component
{
    public $searchQuery=[];
    
    protected $listeners = ['searchQueryUpdated'];
    public function render()
    {
        return view('livewire.past.defense', [
            'students' => $this->searchQuery
        ]);
    }
    public function searchQueryUpdated($query)
    {
        $student = DB::table('arsys_student')
                ->join('arsys_study_program', 'arsys_student.program_id', 'arsys_study_program.id')
                ->join('arsys_research', 'arsys_student.id', 'arsys_research.student_id')
                ->select('arsys_student.*', 'arsys_study_program.code', 'arsys_research.title', 'arsys_research.research_code',)
                ->where('first_name', 'LIKE', '%'.$query.'%')
                ->orWhere('last_name', 'LIKE', '%'.$query.'%')
                ->Where('research_milestone', '<', 9)
                ->get();
                // dd($student);
                $this->searchQuery = $student;
    }
}
