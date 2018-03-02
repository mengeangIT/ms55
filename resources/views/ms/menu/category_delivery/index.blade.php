<li class="nav-item">
    <a id="promotionHM" href="#" data-toggle="tab"  class="item-by-category active ZX01"  data-id="0" data-prom="1" data-zx="{{_t('Promotion')}}">
        <img src="{{URL::asset('/')}}ms/img/responsive/menu/promotion.png"
             alt="Vegetable" class="img-responsive img-center">
        <p class="m-t">{{_t('Promotion')}}</p>
        <i class="fa fa-play"></i>
    </a>
</li>
@foreach($itemCategories as $itemCategory)
    @php
        $imds = json_decode($itemCategory->image,true);
        $img = count($imds)>0?$imds[0]:'';
    @endphp

    <li class="nav-item">
        <a class="item-by-category {{'ZX'.$itemCategory->id}}" id="vegetableHM"
           data-id="{{ $itemCategory->id }}" data-zx="{{$itemCategory->title}}" data-prom="0"
           href="#"
           data-toggle="tab">

                <img src="{{ url('img/cache/img300x300/'.\App\Helpers\Glb::get_basename($img)) }}"
                     alt="{{$itemCategory->title}}"
                     class="img-responsive img-center">
            @if(get_ses_lang() == 'km')
                <p class="m-t">{{$itemCategory->title_km}}</p> <i
                        class="fa fa-play"></i>
            @endif
            @if(get_ses_lang() == 'en')
                <p class="m-t">{{$itemCategory->title}}</p> <i
                        class="fa fa-play"></i>
            @endif

        </a>
    </li>
@endforeach