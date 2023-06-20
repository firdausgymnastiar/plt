<div>
    <div class="row">
      <h4>Pre defense friday, 23 july 2021</h4>
      <hr>
      @foreach ($students as $student)
          <table class="table table-striped">              
              <thead>
                <tr> 
                  <th class="col-sm-3">Student</th>
                  <th class="col-sm-4">Research</th>
                  <th class="col-sm-2">Schedule</th>
                  <th class="col-sm-1">SPV</th>
                  <th class="col-sm-1">EXA</th>
                  <th class="col-sm-1">Mark</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <p>{{$student->code}}.{{$student->student_number}}</p>
                    <p> {{$student->first_name}} {{$student->last_name}}</p>
                  </td>
                  <td>
                    <p>{{ $student->research_code }}</p>
                    <p>{{ $student->title }}</p>
                    <hr>
                  </td>
                  <td>
                    <p>Session:</p>
                    <p>08:30-09:30</p>
                    <p>Media:</p>
                    <p>Tombol</p>
                  </td>
                  <td>
                    <p>Kode SPV</p>
                    <p>Kode SPV</p>
                  </td>
                  <td>
                    <p>kode EXA</p>
                    <p>kode EXA</p>
                    <p>kode EXA</p>
                  </td>
                  <td>
                    <p>Nilai</p>
                  </td>
                </tr>                    
              </tbody>
          </table>
          @endforeach
        </div>
</div>
