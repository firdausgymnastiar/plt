<div>
@section('content')
    
    <div class="row">
        <div class="col-sm-12">
        {{-- Navbar --}}
        @livewire('plt.menu')
        </div> 
    </div>

    <div class="row">
        <div class="col-sm-12">
        {{-- Content --}}
        @livewire('plt.content')
        
        </div> 
    </div>


@endsection
</div>
