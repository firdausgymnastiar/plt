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
                    <p class="font-weight-bold">Session:</p>
                    <p>08:30-09:30</p>
                    <p class="font-weight-bold">Media:</p>
                    <button type="button" class="btn btn-info btn-sm"><i class="fa fa-sharp fa-regular fa-print" style="color: #ffffff;"></i> print assignment</button>
                  </td>
                  <td>
                    <p>AHD</p>
                    <p>DDW</p>
                  </td>
                  <td>
                    <p> <i class="fa fa-solid fa-check" style="color: #23a013;"></i> EAJ</p>
                    <p> <i class="fa fa-solid fa-check" style="color: #23a013;"></i> AIP</p>
                    <p> <i class="fa fa-solid fa-check" style="color: #23a013;"></i> YYS</p>
                  </td>
                  <td>
                    <p> <i class="fa fa-solid fa-pen" style="color: #23a013;"></i> 390</p>
                  </td>
                </tr>                    
              </tbody>
          </table>
          @endforeach
        </div>
</div>
