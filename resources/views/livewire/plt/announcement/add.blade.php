<div>
    {{-- To attain knowledge, add things every day; To attain wisdom, subtract things every day. --}}
    add announcement
    <div class="row">
        <div class="col-sm-12 text-right">
            <x-adminlte-button wire:click="$emitUp('addAnnouncement_Disable')" class="btn-xs" label="x" theme="danger"/>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <b>Announcement</b> | Create Announcement
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-sm-4 text-right">
                    Title
                </div>
                <div class="col-sm-8">
                    <x-adminlte-input wire:model="title" name="iLabel" placeholder="Please type announcement title"/>
                </div>
            </div>
            
            <div class="row">
                <div class="col-sm-4 text-right">
                    Body
                </div>
                <div class="col-sm-8">
                    <x-adminlte-textarea wire:model="body" name="taBasic" placeholder="Please type announcement body"/>
                </div>
            </div>
            
            <div class="row">
                <div class="col-sm-4 text-right">
                    First Author
                </div>
                <div class="col-sm-8">
                    <x-adminlte-input wire:model="firstAuthor" name="iLabel" disabled/>
                </div>
            </div>
            
            <div class="row">
                <div class="col-sm-4 text-right">
                    Other Author
                </div>
                <div class="col-sm-7">
                    @if ($othersAuthor != null) 
                        @foreach($staffs as $index => $staff)
                                @if (in_array($staff->id, $othersAuthor))
                                    {{ $staff->first_name }} {{ $staff->last_name }}
                                    <br>
                                @endif
                        @endforeach
                    @endif

                    <x-adminlte-select2 style="width: 100%" wire:model="anotherAuthor" id="anotherAuthor" name="anotherAuthor">
                        <option default>Please select anotherAuthor</option>
                        @foreach ($staffs as $index => $staff)
                            <option value="{{$staff->id}}">{{$staff->first_name}} {{$staff->last_name}}</option>
                        @endforeach
                        @error('program') <span class="text-danger">{{ $message }}</span><br> @enderror
                    </x-adminlte-select2>
                </div>
                <div class="col-sm-1" wire:click="addAnotherAuthor" style="color: green; cursor: pointer;">
                    <i class="fa fa-solid fa-plus-circle fa-xs"></i> Add
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 text-right">
                    <x-adminlte-button wire:click="save" class="btn-sm" label="Submit" theme="success" icon="fas fa-save"/>
                </div>
            </div>
        </div>
        <div class="card-footer">
            @Arsys<i>2023</i>
        </div>
    </div>
    {{-- @push('scripts')
        <script>
            //var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
            $(document).ready(function () {
                $('#anotherAuthor').on('change', function (e) {
                    let dataanotherAuthor = $(this).val();
                    @this.set('anotherAuthor', dataanotherAuthor);
                    //console.log('here');
                    //window.livewire.emit('selectProgram');
                });
            });
        </script>
    @endpush --}}
</div>
