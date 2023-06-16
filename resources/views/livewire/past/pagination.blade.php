<div>
    <nav aria-label="Page navigation example">
        <ul class="pagination">
          <li class="page-item disabled">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          {{-- @if($pageTwo = true) --}}
          <li wire:click="setPageOne" class="page-item"><a class="page-link" href="#">1</a></li>
          <li wire:click="setPageTwo" class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item disabled">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>

          {{-- @livewire('past.next')
          @else
          @livewire('past.content')
          @endif --}}


</div>

{{-- @if($pageOne != true)
    <div class="row">
        <div class="col-sm-12 text-right">
            <x-adminlte-button wire:click="addAnnouncement_Enable" label="Add Announcement" theme="success" icon="fas fa-adjust"/>
        </div>
    </div>
    @else
        @livewire('plt.announcement.add')
    @endif --}}