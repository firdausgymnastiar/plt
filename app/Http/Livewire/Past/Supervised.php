<?php

namespace App\Http\Livewire\Past;

use Livewire\Component;
use App\Models\Entities\Research;
use App\Models\Entities\Student;
use App\Models\Entities\StudyProgram;
use App\Http\Livewire\Past\Search;
use Illuminate\Http\Request;

class Supervised extends Component
{
    public $searchQuery=[];
    protected $listeners = ['searchQueryUpdated'];
    // protected $listeners = ['searching' => 'cek'];

    public function searchQueryUpdated($query)
    {
        $hasil = Student::where('first_name', 'LIKE', '%'.$query.'%')->orWhere('last_name', 'LIKE', '%'.$query.'%')->get();

        $this->searchQuery = $hasil;
        // dd($this->searchQuery);
        // $this->render();

        // Lakukan logika pencarian atau panggil metode pencarian lainnya di sini
        
    }

    public function cek($dicari)
    {
        $student = Student::where('first_name', 'LIKE', '%'.$dicari.'%')->orWhere('last_name', 'LIKE', '%'.$dicari.'%')->get();
        
        $this->searchQuery = "tes";
        // $this->hasil = $student;
        
        
        // $this->render();
        

        

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
    // $students = Student::where('first_name', 'LIKE', '%'.$dicari.'%')->orWhere('last_name', 'LIKE', '%'.$dicari.'%')->get();
    // return view('livewire.past.supervised', [
        
        //     'students' => $students,
        
        // ]);
        // $componentSearch = app(Search::class);
        // $name = $componentSearch->cari;
        
        // dd($name);
        // $students = Student::where('first_name', 'LIKE', '%'.$dicari.'%')->orWhere('last_name', 'LIKE', '%'.$dicari.'%')->get();

        // // $data = $this->getData($dicari);
        // return view('livewire.past.supervised', [
        //     'name' => $name,
        // ]);

        // $dataMethodCek = $this->hasil;
        // dd($dataMethodCek);

        // $nilai = $this->searchQuery;
        // dd($nilai);
        return view('livewire.past.supervised', [
                    'students' => $this->searchQuery
        ]);
    }

    
}
