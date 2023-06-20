<div>

    @if($search != true)
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-4">
                    <div class="input-group mb-3">
                        <input wire:model="searchQuery" type="text" class="form-control" placeholder="Search name of student" aria-label="Search name of student" aria-describedby="button-addon2">
                        <div class="input-group-append">
                          <button wire:click="setContent" class="btn btn-outline-success" type="button" id="button-addon2">Search!</button>
                        </div>
                    </div>
                </div>
                <hr>
                <p>There is no event participants, please search the name of student</p>
            </div>
        </div>
    @else
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-4">
                    <div class="input-group mb-3">
                        <input wire:model="searchQuery" type="text" class="form-control" placeholder="Search name of student" aria-label="Search name of student" aria-describedby="button-addon2">
                        <div class="input-group-append">
                          <button wire:click="setContent" class="btn btn-outline-success" type="button" id="button-addon2">Search!</button>
                        </div>
                    </div>
                </div>
                <hr>
                @livewire('past.content')
            </div>
    </div>
    @endif

    
</div>