<div>
    {{-- To attain knowledge, add things every day; To attain wisdom, subtract things every day. --}}
    edit announcement
    <div class="row">
        <div class="col-sm-12 text-right">
            <x-adminlte-button wire:click="$emitUp('announcementEdit_Disable')" class="btn-xs" label="x" theme="danger"/>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <b>Announcement</b> | Edit Announcement
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
                <div class="col-sm-12 text-right">
                    <x-adminlte-button wire:click="update" class="btn-sm" label="Update" theme="success" icon="fas fa-save"/>
                </div>
            </div>
        </div>
        <div class="card-footer">
            @Arsys<i>2023</i>
        </div>
    </div>
</div>
