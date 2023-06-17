<div>
          {{-- @livewire('past.pagination') --}}

          @if($pageTwo != true)
          <div>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li wire:click="setPageOne" class="page-item"><a class="page-link" href="#">1</a></li>
                  <li wire:click="setPageTwo" class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item disabled">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
        
                  
                  {{-- @livewire('past.content') --}}
                  
        
        
        </div>
          
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
                  <p>Meeting ID</p>
                  <p>To be Scheduled</p>
                  <p>Passcode</p>
                  <p>-</p>
                  <p>Host</p>
                  <p></p>
                </td>
                <td>
                  <p>Moderator</p>
                  <p>Nama dosen</p>
                  <p></p>
                  <p>Examiner</p>
                  <p>Nama nama dosen</p>
                </td>
                <td>
                  <p>1. Nama Mahasiswa</p>
                  <hr>
                  <p>Please Click on the @ to download the participant's article</p>
                  <p></p>
                  <p>Please Click on the @ to sumbit/revise the participant's defense-mark</p>
                  
                </td>
                <td>
                  <p>1. nilai </p>
              </tr>
              
            </tbody>
        </table>
      </div>

            <br><br>
         <div>
            <table class="table table-striped">
                <h4>Supervised Student</h4>
                <thead>
                    <hr>
                  <tr> 
                    <th scope="col">Student</th>
                    <th scope="col">Research</th>
                    <th scope="col">Mark</th>
                  </tr>
                </thead>
                <tbody>
                  
                  <tr>
                    <td scope="row">
                      <p>kode student</p>
                      <p>Nama student</p>
                    </td>

                  @foreach ($researchs as $research)
                  <td>
                    <p>{{ $research->research_code }}</p>
                    <p>{{ $research->title }}</p>
                  </td> 
                  @endforeach
                    
                    <td scope="row">
                      <p>nilai</p>
                    </td>
                    {{-- <td>Mark</td>
                    <td>Otto</td>                     --}}
                  </tr>
                  
                </tbody>
            </table>
          </div>

            <br><br>
{{--             
            <table class="table table-striped">
              <h4>Pre defense friday, 23 july 2021</h4>
              <thead>
                  <hr>
                <tr> 
                  <th scope="col">No</th>
                  <th scope="col">Student</th>
                  <th scope="col">Research</th>
                  <th scope="col">Schedule</th>
                  <th scope="col">SPV</th>
                  <th scope="col">EXA</th>
                  <th scope="col">Mark</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td scope="row">1</td>
                  <td>
                    <p>kode student</p>
                    <p>Nama student</p>
                  </td>
                  <td>
                    <p>kode SK</p>
                    <p>Judul Research</p>
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
          </table> --}}
          @else       
          
          
          {{-- @livewire('past.next') --}}
        
          @livewire('past.pagination')
            <div class="row">
              <table class="table table-striped">              
                  <h4>Pre defense friday, 23 july 2021</h4>
                  <thead>
                      <hr>
                    <tr> 
                      <th scope="col">No</th>
                      <th scope="col">Student</th>
                      <th scope="col">Research</th>
                      <th scope="col">Schedule</th>
                      <th scope="col">SPV</th>
                      <th scope="col">EXA</th>
                      <th scope="col">Mark</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td scope="row">1</td>
                      <td>
                        <p>kode student</p>
                        <p>Nama student</p>
                      </td>
                      <td>
                        <p>kode SK</p>
                        <p>Judul Research</p>
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
            </div>

            <div class="row">

              
            </div>

          @endif
          
          {{-- @livewire('past.pagination') --}}
</div>
