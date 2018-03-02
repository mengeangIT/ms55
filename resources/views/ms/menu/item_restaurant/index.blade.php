
    <div class="row textSubHeader m-b-0">
        <div class="col-xs-6 pull-right">
            <div class="paginationBox  paginationBoxTop">

                {{--pagination step 3 put class and link page of pagination --}}
                <div class="paginationList paginat-desk" style="display: block;">
                    {{ $items->links('vendor.pagination.pagination_desk') }}
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <div id="productShopStore">
        <div class="row">
            <div class="col-xs-12">
                <div id="roastduck_render">
                    <div class="row">
                        @foreach($items as $item)
                            @php
                                $imds = json_decode($item->image,true);
                                $img = count($imds)>0?$imds[0]:'';
                            @endphp
                            <div class="healthymenuProductBox col-md-3 col-lg-3 col-xs-6">
                                <div class="productListHMBox">
                                    <a href="#xxitemxx-{{ $item->id }}"
                                       data-toggle="modal">
                                            <img src="{{ url('img/cache/img300x300/'.\App\Helpers\Glb::get_basename($img)) }}" width="100%">
                                    </a>
                                </div>

                                <div class="caption">
                                    <a href="#xxitemxx-{{ $item->id }}"
                                       data-toggle="modal">

                                        @if(get_ses_lang() == 'km')
                                            <h4>{{$item->title_km}}</h4>
                                        @endif
                                        @if(get_ses_lang() == 'en')
                                            <h4>{{$item->title}}</h4>
                                        @endif
                                    </a>
                                    <p><a class="readmore"
                                          href="#xxitemxx-{{ $item->id }}"
                                          data-toggle="modal">
                                            more...
                                        </a>
                                    </p>
                                </div>

                             {{--=============pop up detail======--}}
                                <div id="xxitemxx-{{ $item->id }}"
                                     class="menu-popup modal hide fade fade-only"
                                     tabindex="-1" role="dialog"
                                     aria-labelledby="myModalLabel"
                                     aria-hidden="true" data-backdrop="true">
                                    <div class="modal-dialog menuPopupRedBox"
                                         role="document">
                                        <div class="modal-content">
                                            <div class="listDeliveryProduct modal-body">
                                                <button type="button"
                                                        class="close"
                                                        data-dismiss="modal"
                                                        aria-hidden="true">×
                                                </button>
                                                <p class="img imgMenuPopup">

                                                        <img data-src="{{ url('img/cache/img300x300/'.\App\Helpers\Glb::get_basename($img)) }}"
                                                             class="lazyloaded my-reload-img-rest">

                                                </p>

                                                @if(get_ses_lang() == 'km')
                                                    <h3>{{$item->title_km}}</h3>
                                                @endif
                                                @if(get_ses_lang() == 'en')
                                                    <h3>{{$item->title}}</h3>
                                                @endif
                                                <p class="">{{$item->description}} </p>
                                                <p class="">
                                                    Kalory: {{$item->kalory}}
                                                    kcal.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="btnBackToTop-Pagination">
                    <div class="row">
                        <div class="col-xs-3">
                            <div class="btnBackToTop pull-left">
                                <a class="btnBackToTop" href="#healthymenu">
                                    Go to top</a>
                            </div>
                        </div>
                        <div class="paginationBox col-xs-9">
                            <div class="paginationList paginat-desk" style="display: block;">
                                {{--{{ $items->links() }}--}}
                                {{ $items->links('vendor.pagination.pagination_desk') }}
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
{{--@endforeach--}}