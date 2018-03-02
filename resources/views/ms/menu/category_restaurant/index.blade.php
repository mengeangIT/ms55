@foreach($itemCategories as $itemCategory)
    @php
        $imds = json_decode($itemCategory->image,true);
        $img = count($imds)>0?$imds[0]:'';
    @endphp
    <li class="nav-item">
        <a class="rest-item-by-category {{'RZX'.$itemCategory->id}}" id="vegetableHM"
           data-id="{{ $itemCategory->id }}" data-rzx="{{$itemCategory->title}}"
           data-prom="0"
           href="#"
           data-toggle="tab">

            <img src="{{ url('img/cache/img300x300/'.\App\Helpers\Glb::get_basename($img)) }}"
                 alt="{{ $itemCategory->title }}" class="img-responsive img-center">
            @if(get_ses_lang() == 'km')
                <p class="m-t">{{$itemCategory->title_km}}</p>
            @endif
            @if(get_ses_lang() == 'en')
                <p class="m-t">{{$itemCategory->title}}</p>
            @endif
            <i class="fa fa-play"></i>
        </a>
    </li>
@endforeach