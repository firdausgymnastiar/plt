<div>
  <div>
      <table class="table table-striped">
        <h4>Final defense Thursday, 19 August 2021</h4>
        <thead>
            <hr>
          <tr> 
            <th scope="col">Schedule</th>
            <th scope="col">Examiners</th>
            <th scope="col">Participants</th>
            <th scope="col">Mark</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td scope="row">
              <p>PUB2</p>
              <p>19 August 2021</p>
              <p>8:00 - 11:00</p>
              <p></p>
              <p class="font-weight-bold">Meeting ID</p>
              <p>To be Scheduled</p>
              <p class="font-weight-bold">Passcode</p>
              <p>-</p>
              <p class="font-weight-bold">Host</p>
              <p></p>
              <br>
            </td>
            <td>
              <p class="font-weight-bold">Moderator</p>
              <p>Didin Wahyudin,S.Pd.,MT.,Ph.D.</p>
              <p></p>
              <p class="font-weight-bold">Examiner</p>
              <p> <i class="fa fa-solid fa-check" style="color: #23a013;"></i> Dr. H. Bambang Trisno, M.SIE.</p>
              <p> <i class="fa fa-solid fa-check" style="color: #23a013;"></i> Wasimudin Surya Saputra, S.T., M.T.</p>
              <p> <i class="fa fa-solid fa-check" style="color: #23a013;"></i> Ir. Hj. Arjuni Budi Pantjawati, M.T.</p>
              <p> <i class="fa fa-solid fa-check" style="color: #23a013;"></i> Prof. Dr. Ade Gafar Abdullah, S.Pd., M.Si.</p>
              <p> <i class="fa fa-solid fa-check" style="color: #23a013;"></i> Muhammad Adli Rizqulloh, M.T.</p>
            </td>
            <td>
              @foreach ($students as $student)
              <p><a href=""><u>1. <i class="fas fa-file-pdf" style="color: #0f8bff;"></i> {{$student->first_name}} {{$student->last_name}}</u></a></p>
              @endforeach
              <hr>
              <p><i>Please Click on the</i> <i class="fas fa-file-pdf"></i> <i>to download the participant's article</i></p>
              <p></p>
              <p><i>Please Click on the</i> <i class="fa fa-solid fa-pen" style="color: #23a013;"></i> <i>to sumbit/revise the participant's defense-mark</i></p>
              
            </td>
            <td>
              <p> 1. <i class="fa fa-solid fa-pen" style="color: #23a013;"></i>  380 </p>
          </td>
          </tr>
          
        </tbody>
      </table>
    </div>
</div>