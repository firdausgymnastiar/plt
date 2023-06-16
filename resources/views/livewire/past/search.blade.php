<div>

    @if($search != true)
    <div class="row">
        <div class="col-sm-12">
            {{-- Example with multiple selections (for SelectBs) --}}
            @php
            $config = [
                "title" => "Select name of student",
                "liveSearch" => true,
                "liveSearchPlaceholder" => "Search name of student",
                "showTick" => true,
                "actionsBox" => true,
            ];
            $options= ['Select name of student','Asep', 'Rizki', 'Topik', 'Reza'];
            @endphp

            <x-adminlte-select-bs id="optionsCategory" name="optionsCategory[]" label="Please select name of student" label-class="text-danger" :config="$config" >
            <x-slot name="prependSlot">
                <div wire:click="setContent" class="btn input-group-text bg-gradient-red">
                    <i class="fas fa-search"></i>
                </div>
            </x-slot>
            <x-adminlte-options :options="$options"/>
            {{-- <option>Vehicle 1</option>
            <option>Vehicle 2</option> --}}
            </x-adminlte-select-bs>
            <hr>
            <p>There is no event participants, please search the name of student</p>
        </div>
    </div>
    @else
    <div class="row">
        <div class="col-sm-12">
            {{-- Example with multiple selections (for SelectBs) --}}
            @php
            $config = [
                "title" => "Select name of student",
                "liveSearch" => true,
                "liveSearchPlaceholder" => "Search name of student",
                "showTick" => true,
                "actionsBox" => true,
            ];
            $options= ['Select name of student','Asep', 'Rizki', 'Topik', 'Reza'];
            @endphp

            <x-adminlte-select-bs id="optionsCategory" name="optionsCategory[]" label="Please select name of student" label-class="text-danger" :config="$config" >
            <x-slot name="prependSlot">
                <div wire:click="setContent" class="input-group-text bg-gradient-red">
                    <i class="fas fa-search"></i>
                </div>
            </x-slot>
            <x-adminlte-options :options="$options"/>
            {{-- <option>Vehicle 1</option>
            <option>Vehicle 2</option> --}}
            </x-adminlte-select-bs>
            <hr>
            @livewire('past.content')
        </div>
    </div>
    @endif

    
</div>
