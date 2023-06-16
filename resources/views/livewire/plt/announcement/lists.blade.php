<div>
    {{-- In work, do what you enjoy. --}}
    <h3><b>List Of Announcement</b></h3>
    <hr>
    @foreach ($announcements as $index => $announcement)  
    {{ $index+1 }}. {{ $announcement->title }} 
    @foreach ($announcement->authors as $author)
        {{ $author->detail->first_name }} {{ $author->detail->last_name }},
    @endforeach
    <i wire:click="$emitUp('announcementEdit_Enable', {{ $announcement->id }})" class="fa fa-edit fa-xs" style="color:orange; cursor:pointer;"></i>
    <i wire:click="delete({{ $announcement->id }}, {{ $announcement->id }})" class="fa fa-trash fa-xs" style="color:red; cursor:pointer;"></i>
    <br>
    @endforeach
</div>
