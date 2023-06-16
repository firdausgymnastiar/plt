@section('content')
<div>
    <div class="card">
        <div class="card-header">Event | Past Events</div>

        <div class="card-body">
          <div>
            {{-- Search --}}
            @livewire('past.search')
          </div>

          <div>
            {{-- Content --}}
            {{-- @livewire('past.content') --}}
          </div>
            
            

        </div>

        <div class="card-footer">
            <p>@Kelompok 6</p>
        </div>
    </div>
</div>
@endsection