<div>
    <div class="row">
        <h4>Supervised Student</h4>
        {{-- <p>{{ $students }} </p> --}}
        <hr>
            {{-- @foreach ($researchs as $research) --}}
            @foreach ($students as $student)
            {{-- @foreach ($kodes as $kode) --}}
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
                                {{-- <p>{{$kode->code}}.{{$student->student_number}}</p> --}}
                                <p> {{$student->first_name}} {{$student->last_name}}</p>
                                {{-- <p> {{$student}}</p> --}}
                            </td>  
                            <td>
                                {{-- <p>{{ $research->research_code }}</p>
                                <p>{{ $research->title }}</p> --}}
                            </td> 
                            <td>
                                <p>nilai</p>
                            </td>
                        </tr>                    
                    </tbody>
                </table>
            {{-- @endforeach
            @endforeach --}}
            @endforeach
        <hr>
    </div>
</div>
