<div>
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
              </tr>
              
            </tbody>
        </table>
    </div>
</div>
