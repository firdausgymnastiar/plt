<div>       
            {{-- @if($pageTwo != true)   
            <div>
              <nav aria-label="Page navigation example">
                  <ul class="pagination">
                    <li class="page-item disabled">
                      <a class="page-link"aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                      </a>
                    </li>
                    <li wire:click="setPageOne" class="page-item"><a class="page-link">1</a></li>
                    <li wire:click="setPageTwo" class="page-item"><a class="page-link">2</a></li>
                    <li class="page-item disabled">
                      <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                      </a>
                    </li>
                  </ul>
              </nav>
            </div>   --}}
            {{-- @livewire('past.navbar') --}}
 
              @livewire('past.defense')
                <br>
              @livewire('past.supervised')
                <br>
              
          {{-- @elseif($pageTwo = true )                        --}}
          @livewire('past.pre')
            {{-- @endif --}}
            
              
</div>
