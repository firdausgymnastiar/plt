<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use App\Models\Entities\Research;
use App\Models\Entities\Student;
use App\Models\Entities\ResearchSupervise;
use App\Models\Entities\StudyProgram;
use App\Http\Livewire\Past\Search;
use App\Models\Entities\DefenseExaminerScore;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Collection;

class Pre extends Component
{
    public $searchQuery=[];
    
    protected $listeners = ['searchQueryUpdated'];
    public function render()
    {
        $marks = DefenseExaminerScore::all();
        
        return view('livewire.past.pre', [
            'students' => $this->searchQuery
            ,'marks' => $marks
            // ,'kodes' => $kodes
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

        // $hasil = DB::table('arsys_event_applicant')
        // ->join('arsys_event_applicant', 'arsys_event_applicant.research_id', 'arsys_research.id')
        // ->join('arsys_defense_examiner_score', 'arsys_event_applicant.id', 'arsys_defense_examiner_score.applicant_id')
        // ->select('arsys_event_applicant.*', 'arsys_event_applicant.*', 'arsys_defense_examiner_score.mark')
        // ->where('id', 'applicant_id')
        // ->get();

        // $spv = DB::table('arsys_research_supervisor')
        //         ->join('arsys_research', 'arsys_research_supervisor.research_id', 'arsys_research.id')
        //         ->join('arsys_faculty', 'arsys_research_supervisor.supervisor_id', 'arsys_faculty.id')
        //         ->crossJoin('arsys_student')
        //         ->where('first_name', 'LIKE', '%'.$query.'%')
        //         ->orWhere('last_name', 'LIKE', '%'.$query.'%')
        //         ->where('research_id', 'arsys_student.id')
        //         ->where('arsys_student.id', 'arsys_research.student_id')
        //         ->select('arsys_research_supervisor.*', 'arsys_research.id', 'arsys_faculty.code', 'arsys_student.*')
        //         ->get();  
        // $hasil = DB::table('arsys_student')
        // ->join('arsys_study_program', 'arsys_student.program_id', 'arsys_study_program.id')
        // ->join('arsys_research', 'arsys_student.id', 'arsys_research.student_id')
        // ->join('arsys_research', function ($join) {
        //     $join->crossJoin('arsys_research_supervisor')
        //         ->on('arsys_research.id', '=', 'arsys_research_supervisor.research_id');
        // })
        // ->where('first_name', 'LIKE', '%'.$query.'%')
        // ->orWhere('last_name', 'LIKE', '%'.$query.'%')
        // ->select('arsys_student.*', 'arsys_study_program.*', 'arsys_research.*', 'arsys_research_supervisor.*')
        // ->get();           
//         $hasil = DB::table('arsys_student')
//         // ->join('arsys_study_program', 'arsys_student.program_id', 'arsys_study_program.id')
//         ->join('arsys_research', 'arsys_student.id', 'arsys_research.student_id')
//         ->crossJoin('arsys_research_supervisor', function ($join) {
//             $join->join('arsys_faculty', 'arsys_research_supervisor.supervisor_id', 'arsys_faculty.id' )
//             ->join('arsys_research', 'arsys_research_supervisor.research_id', 'arsys_research.id' );
//         })
//         ->where('first_name', 'LIKE', '%'.$query.'%')
//         ->orWhere('last_name', 'LIKE', '%'.$query.'%')
//         ->select('arsys_student.*', 'arsys_research.*', 'arsys_research_supervisor.*', 'arsys_faculty.*')
//         ->get();           
//         $hasil = DB::table('arsys_research_supervisor')
//             ->join('arsys_research', 'arsys_research_supervisor.research_id', 'arsys_research.id')
//             ->join('arsys_faculty', 'arsys_research_supervisor.supervisor_id', 'arsys_faculty.id')
//             ->select('arsys_research_supervisor.*', 'arsys_research.*',  'arsys_faculty.*')
//             ->get();           
//         $student = DB::table('arsys_student')
//                 ->insert($hasil)                
//                 ->where('first_name', 'LIKE', '%'.$query.'%')
//                 ->orWhere('last_name', 'LIKE', '%'.$query.'%')
//                 ->get();
// dd($hasil);
        $this->searchQuery = $student;
    }

}
