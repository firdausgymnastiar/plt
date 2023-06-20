<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use App\Models\Entities\Research;
use App\Models\Entities\Student;
use App\Models\Entities\StudyProgram;
use App\Http\Livewire\Past\Search;
use Illuminate\Http\Request;
use App\Models\Entities\DefenseExaminerScore;
use Illuminate\Support\Facades\DB;

class Supervised extends Component
{
    public $searchQuery=[];
    // public $searchResearch=[];
    
    protected $listeners = ['searchQueryUpdated'];

    public function searchQueryUpdated($query)
    {
        // $student = DB::table('arsys_student')
        //         ->join('arsys_study_program', 'arsys_student.program_id', 'arsys_study_program.id')
        //         ->select('arsys_student.*', 'arsys_study_program.code')
        //         ->where('first_name', 'LIKE', '%'.$query.'%')
        //         ->orWhere('last_name', 'LIKE', '%'.$query.'%')->get();

        $student = DB::table('arsys_student')
                ->join('arsys_study_program', 'arsys_student.program_id', 'arsys_study_program.id')
                ->join('arsys_research', 'arsys_student.id', 'arsys_research.student_id')
                ->select('arsys_student.*', 'arsys_study_program.code', 'arsys_research.title', 'arsys_research.research_code')
                ->where('first_name', 'LIKE', '%'.$query.'%')
                ->orWhere('last_name', 'LIKE', '%'.$query.'%')->get();

        // $research = DB::table('arsys_student')
        //         ->join('arsys_research', 'arsys_student.id', 'arsys_research.student_id')
        //         ->select('arsys_student.*', 'arsys_research.title')
        //         ->where('first_name', 'LIKE', '%'.$query.'%')
        //         ->orWhere('last_name', 'LIKE', '%'.$query.'%')->get();


        //         $data = DB::table('table1')
        //     ->join('table2', 'table1.id', '=', 'table2.table1_id')
        //     ->join('table3', 'table2.id', '=', 'table3.table2_id')
        //     ->select('table1.column1', 'table2.column2', 'table3.column3')
        //     ->get();
        // $research = DB::table('arsys_research')
        // ->join('arsys_student', 'arsys_research.student_id', 'arsys_student.id')
        // ->select('arsys_research.*', 'arsys_student.id')
        // ->where('first_name', 'LIKE', '%'.$query.'%')
        // ->orWhere('last_name', 'LIKE', '%'.$query.'%')->get();


        // $this->searchResearch = $research;
        $this->searchQuery = $student;
    }
    
    public function render()
    {
        // dd($students);  
    //     // $researchs = Research::take(5)->get();        
    //     // $kodes = StudyProgram::take(5)->get();
    //     // $students = Student::take(5)->get(); 

    //     // return view('livewire.past.supervised', [
    //     //     'researchs' => $researchs,
    //     //     'students' => $students,
    //     //     'kodes' => $kodes            
    //     // ]);

    $marks = DefenseExaminerScore::take(20)->get();
        

        return view('livewire.past.supervised', [
                'students' => $this->searchQuery
                // ,'researchs' => $this->searchResearch
                ,'marks' => $marks
        ]);
    }

    
}
