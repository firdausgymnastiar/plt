<div>
    <div class="row">
        <h4>Supervised Student</h4>
        <hr>
            {{-- @foreach ($researchs as $research) --}}
            @foreach ($students as $student)
            {{-- @foreach ($kodes as $kode) --}}
            {{-- @foreach ($marks as $mark) --}}
                <table class="table table-striped table-sm">
                    <thead>
                        <tr>    
                            <th class="col-sm-3">Student</th>                                
                            <th class="col-sm-8">Research</th>
                            <th class="col-sm-1"> Mark</th>                                
                        </tr>
                    </thead>
                    <tbody>                    
                        <tr>            
                            <td>
                                {{-- <p>{{$kodes->program->code}}.{{$student->student_number}}</p> --}}
                                <p>{{$student->code}}.{{$student->student_number}}</p>
                                {{-- <p>{{$student->program->code}}.{{$student->student_number}}</p> --}}
                                {{-- <p>{{$student->program->code}}.{{$student->student_number}}</p> --}}
                                {{-- <p>.{{$student->student_number}}</p> --}}
                                <p> {{$student->first_name}} {{$student->last_name}}</p>
                                {{-- <p> {{$student}}</p> --}}
                            </td>  
                            <td>
                                <p>{{ $student->research_code }}</p>
                                {{-- <p>{{ $research->research_code }}</p> --}}
                                {{-- <p>{{ $research->title }}</p> --}}
                                <p>{!! $student->title !!}</p>
                            </td> 
                            <td>
                                <p></p><i class="fa fa-solid fa-pen" style="color: #23a013;"></i>385</p>

                            </td>
                        </tr>                    
                    </tbody>
                </table>
            {{-- @endforeach
            @endforeach --}}
            {{-- @endforeach --}}
            @endforeach
        <hr>
    </div>
</div>
