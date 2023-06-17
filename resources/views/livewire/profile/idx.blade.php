@section('content')
<div>

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center mb-2">
                            <img src="{{asset('img/idos.jpg')}}" class="img-thumbnail rounded-circle mb-2" alt="Profile Picture" width="150">
                            <h4 class="font-weight-bold">Firdaus Gymnastiar</h4>
                        </div>
                        <div>
                            <h4 class="">Tentang Saya</h4>
                            <p class="card-text text-justify">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Amet ratione magnam culpa veritatis porro perferendis accusamus, beatae qui delectus, eligendi quia fugit necessitatibus nobis ullam dolore impedit distinctio error eveniet vero nulla?</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header bg-info">
                        <h3 class="font-weight-bolder">Profile</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0 ">Nama</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <p>Firdaus Gymnastiar</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">NIM</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <p>2001641</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Program Studi</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <p>Teknik Elektro</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Email</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <p>firdaus.gymnastiar@upi.edu</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <button type="button" class="btn btn-success" href="#">Sukses!!!</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

   {{-- With prepend slot, label and data-placeholder config --}}
   <table class="table">
    <thead>
      <tr>
        <th class="col-2">Kolom 1</th>
        <th class="col-10">Kolom 2</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="col-2">Nilai 1</td>
        <td class="col-10">Nilai 2</td>
      </tr>
    </tbody>
  </table>
  

</div>
@endsection
