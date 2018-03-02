@extends('ms.layout.front')
@section('title', 'PromotionPage')
@section('url'){{url('/promotion/detail')}}@endsection
@section('sharefb'){{url('https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.mastersukisoup.com%2Fpromotion%2Fdetail')}}@endsection
    @section('layout-id')
        <div id="promotiondetail">
    @endsection
            @if(!is_m())
                @include('ms.layout.delivery')
            @endif
        @section('content')
                <div class="boxpage">
                    <div class="container">

                        <div class="row hidden-md-down">
                            <div class="col-xs-12">
                                <div class="breadcrumbList">
                                    <ul class="breadcrumb">
                                        <li><a href="{{url('/')}}">Home</a></li>
                                        <li class="active">{{_t('Promotion Detail')}}</li>
                                    </ul>
                                </div>
                                <div class="titleText">
                                    <div class="textHeaderNoImg">
                                        <div class="linegray">
                                            <h2>{{_t('Promotion Detail')}}</h2>
                                        </div>
                                        <div class="redbox"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row hidden-lg-up">
                            <h1 class="textHeaderMobile">{{_t('Promotion Detail')}}</h1>
                        </div>
                        <div class="slideBannerPromotion">

                                <img src="{{ url('img/cache/image940x350/'.\App\Helpers\ITPC::get_basename($promotion->image)) }}" class="hidden-sm-down" width="100%" height="350px" />
                                <img src="{{ url('img/cache/image940x350/'.\App\Helpers\ITPC::get_basename($promotion->image)) }}" class="hidden-md-up" width="100%" height="150px" />

                        </div>
                        <div class="promotionDescription m-t">
                            <div class="textHeaderDes">
                                {{--@if(get_ses_lang() == 'km')--}}
                                    {{--<h3 style="font-size: 24px;">{{$promotion->title_km}}</h3>--}}
                                {{--@endif--}}
                                {{--@if(get_ses_lang() == 'en')--}}
                                    {{--<h3 style="font-size: 24px;">{{$promotion->title_en}}</h3>--}}
                                {{--@endif--}}
                                <div class="graybox"></div>
                            </div>
                            <div class="promotionDetail">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="datePost">
                                            <p class="postdateNews">
                                                <time class="activity_start_date postdateNews" datetime="2016-12-07"></time>
                                                {{\Carbon\Carbon::parse($promotion->start_date)->format('d/m/Y') }} - {{\Carbon\Carbon::parse($promotion->last_date)->format('d/m/Y') }}
                                                <time class="activity_end_date" datetime="2017-02-15"></time>
                                            </p>
                                        </div>
                                        <div class="textDescription">
                                            {!! $promotion->content !!}
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="buttonBack row">
                                <div class="col-xs-6 marginleft0">
                                    <a class="btnBackWard" href="{{url('/promotion')}}">Back</a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
        @endsection
    @section('layout-id-close')
        </div>
    @endsection
@section('script')
    @parent

@endsection