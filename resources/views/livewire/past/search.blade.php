<div>

    @if($search != true)
        <div class="row">
            <div class="col-sm-12">
                    <x-adminlte-select2 name="sel2Vehicle" label="Vehicle" label-class="text-lightblue"
                    igroup-size="lg" data-placeholder="Select name of student">
                    <x-slot name="prependSlot">
                        <div wire:click="setContent" class="btn input-group-text bg-gradient-red">
                            <i class="fas fa-search"></i>
                        </div>
                    </x-slot>
                    <option default></option> 
                    @foreach ($students as $index => $student)
                    <option value="{{$student->id}}">{{$student->first_name}} {{$student->last_name}}</option>
                    @endforeach
                </x-adminlte-select2>
                <hr>
                <p>There is no event participants, please search the name of student</p>
            </div>
        </div>
    @else
        <div class="row">
            <div class="col-sm-12">
                <x-adminlte-select2 name="sel2Vehicle" label="Vehicle" label-class="text-lightblue"
                    igroup-size="lg" data-placeholder="Select name of student">
                    <x-slot name="prependSlot">
                        <div wire:click="setContent" class="btn input-group-text bg-gradient-red">
                            <i class="fas fa-search"></i>
                        </div>
                    </x-slot>
                    <option default></option> 
                    @foreach ($students as $index => $student)
                    <option value="{{$student->id}}">{{$student->first_name}} {{$student->last_name}}</option>
                    @endforeach
                </x-adminlte-select2>
                <hr>
                @livewire('past.content')
            </div>
    </div>
    @endif

    
</div>
