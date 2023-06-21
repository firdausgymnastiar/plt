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
                {{-- @if($pageTwo != true && $pageOne = true )
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
                  </div>  
                @livewire('past.defense')
                <br>
                @livewire('past.supervised')
                <br>
                @livewire('past.pre')
                @elseif($pageTwo = true  && $pageOne != true ) 
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
                  </div>                      
                @livewire('past.pre')
                @else
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
                  </div>    
                  @livewire('past.defense')
                <br>
                @livewire('past.supervised')                  
                @livewire('past.pre')
                @endif --}}



                <hr>
                @livewire('past.content')
            </div>
    </div>
    @endif

    
</div>