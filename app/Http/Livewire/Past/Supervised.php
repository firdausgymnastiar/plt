<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use App\Models\Entities\Research;
use App\Models\Entities\Student;
use App\Models\Entities\StudyProgram;
use App\Http\Livewire\Past\Search;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Supervised extends Component
{
    public $searchQuery=[];
    // public $program=[];
    
    protected $listeners = ['searchQueryUpdated'];

    public function searchQueryUpdated($query)
    {
        // $result = Student::where('first_name', 'LIKE', '%'.$query.'%')->orWhere('last_name', 'LIKE', '%'.$query.'%')->get();

        // $result = Student::all();
        $result = DB::table('arsys_student')
                ->join('arsys_study_program', 'arsys_student.program_id', 'arsys_study_program.id')
                ->select('arsys_student.*', 'arsys_study_program.code')
                ->where('first_name', 'LIKE', '%'.$query.'%')->orWhere('last_name', 'LIKE', '%'.$query.'%')->get();
        


        // $a = Student::where('program_id', $result)->get();
        // $c = StudyProgram::with('students')->get();
        // $b = StudyProgram::where('id', 'LIKE', '%'.$a.'%')->get();
        
        // $studyCode = StudyProgram::where('id', Student::where('program_id', Student::where('first_name', 'John')->get();
        // $studyProgram = DB::table('arsys_student')
        //         ->join('arsys_study_program', 'arsys_student.program_id', '=', 'arsys_study_program.id')
        //         ->select('arsys_student.*', 'arsys_study_program.code')
        //         ->get();
        // dd($categories);
        
        $this->searchQuery = $result;
        // $this->program = $studyProgram;
        
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

    // $studyCode = StudyProgram::where('id', Student::find('program_id'))->get();
        // $studyCode = StudyProgram::where('id', Student::find('program_id'))->get();
        // $kodes  = StudyProgram::all();

        // $kode = $studyCode['']

        // $this->codes = $studyCode;
        
        // dd($studyCode);
        // $kodes = StudyProgram::where('id', Student::find('program_id'))->get();
        

        // $studyProgram = DB::table('arsys_student')
        //         ->join('arsys_study_program', 'arsys_student.program_id', '=', 'arsys_study_program.id')
        //         ->select('arsys_student.*', 'arsys_study_program.code')
        //         ->get();

        //         $data = StudyProgram::join('arsys_study_program', 'arsys_student.program_id', '=', 'arsys_study_program.id')
        //     ->select('arsys_student.*', 'arsys_study_program.code')
        //     ->get();

        // $kodes = Student::paginate();
        // $result = Student::paginate(5);

        // $result = DB::table('arsys_student')
        //         ->join('arsys_study_program', 'arsys_student.program_id', 'arsys_study_program.id')
        //         ->select('arsys_student.*', 'arsys_study_program.code')
        //         ->paginate(5);

        return view('livewire.past.supervised', [
                'students' => $this->searchQuery
                // ,'kodes' => $kodes
        ]);
    }

    
}
