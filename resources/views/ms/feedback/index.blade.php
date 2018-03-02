@extends('ms.layout.front')
@section('title', 'FeedBackPage')
@section('url'){{url('/feedback')}}@endsection
@section('sharefb'){{('https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.mastersukisoup.com%2Ffeedback')}}@endsection
<link href="{{asset('/')}}ms/datetime/datepicker.min.css" rel="stylesheet" type="text/css">

@section('layout-id')
    <div id="feedback">
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
                                        <li><a href="{{url('/home')}}">{{_t('Home')}}</a></li>
                                        <li class="active">{{_t('Feedback')}}</li>
                                    </ul>
                                </div>
                                <div class="titleText">
                                    <div class="textHeaderNoImg">
                                        <div class="linegray">
                                            <h2>{{_t('Feedback')}}</h2>
                                        </div>
                                        <div class="redbox"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row hidden-lg-up">
                            <h1 class="textHeaderMobile">{{_t('Feedback')}}</h1>
                        </div>


                    <div class="row">
                        <div class="col-xs-12 col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1">
                            <div class="feedbackBox">
                                <div class="textIntro">
                                    <p>Every single feedback will be advantage in developing our service to enhance
                                        client&rsquo;s satisfaction. Please kindly choose a topic and fill in data
                                        below .</p>
                                </div>

                                <form id="fromFeedback" method="POST" action="{{ url('/post-feedback')}}"
                                      enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <div class="row form-group">
                                        <div class="col-md-4 col-xs-4 col-sm-12">
                                            <input id="objective1" type="radio" name="objective" value="Suggestion"
                                                   checked="checked">
                                            <label for="objective1">{{_t('Suggestion')}}</label>
                                        </div>
                                        <div class="col-md-4 col-xs-4 col-sm-12">
                                            <input id="objective2" type="radio" name="objective" value="Comment">
                                            <label for="objective2">{{_t('Comment')}}</label>
                                        </div>
                                        <div class="col-md-4 col-xs-4 col-sm-12">
                                            <input id="objective3" type="radio" name="objective" value="Recommend">
                                            <label for="objective3">{{_t('Recommend')}}</label>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-xs-12 hidden-xs-down" for="inputSubject">
                                            {{_t('Subject')}}
                                            <span class="fontorange">*</span>
                                        </label>
                                        <div class="selectSubjectFeedback col-xs-12">
                                            <select id="inputSubject" class="form-control " name="subject" required>
                                                <option value="">{{_t('Choose Subject')}}</option>
                                                <option value="employee-quality-of-branch">{{_t('Employee / Quality of the
                                                    branch')}}
                                                </option>
                                                <option value="delivery">{{_t('Home delivery service')}}</option>
                                                <option value="call-center">{{_t('Call Center')}}</option>
                                                <option value="delivery-rider">{{_t('Delivery rider')}}</option>
                                                <option value="card">{{_t('Membership card')}}</option>
                                                <option value="voucher">{{_t('Gift voucher')}}</option>
                                                <option value="promotion">{{_t('activity and Promotion')}}</option>
                                                <option value="other">{{_t('Others')}}</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-xs-12 col-sm-6">
                                            <label for="inputName" class="hidden-xs-down">
                                                {{_t('Name')}}
                                                <span class="fontorange">*</span>
                                            </label>
                                            <input class="col-xs-12 form-control" name="name" type="text" id="inputName"
                                                   placeholder="{{_t('Name')}} *" required>
                                        </div>
                                        <div class="clearfix hidden-sm-up"></div>
                                        <br class="hidden-sm-up">
                                        <div class="col-xs-12 col-sm-6">
                                            <label for="inputLastName" class="hidden-xs-down">
                                                {{_t('Surname')}}
                                                <span class="fontorange">*</span>
                                            </label>
                                            <input class="col-xs-4 form-control" name="surname" type="text"
                                                   id="inputLastName" placeholder="{{_t('Surname')}} *" required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-xs-12 col-sm-6">
                                            <label for="inputPhone" class="hidden-xs-down">
                                                {{_t('Tel')}}.
                                                <span class="fontorange">*</span>
                                            </label>
                                            <input type="text" name="phone" class="form-control" id="inputPhone"
                                                   maxlength="9" placeholder="{{_t('Tel')}}." required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-xs-12 col-sm-6">
                                            <div id="dtBox"></div>
                                            <label for="inputDateService" class="hidden-xs-down">{{_t('Time and Date')}} <span class="fontorange">*</span></label>
                                            <div class="selectDeliverySchedule input-group">
                                                <input type="hidden" name="u_id" value="{{Auth::id()}}" required>
                                                {{--<input type="datetime-local" id="example-input-date-time-local"--}}
                                                       {{--name="date" placeholder="date / time local" required>--}}
                                                <input type="text" name="date" style="width: 250px !important;" id="timepicker-actions-exmpl" placeholder="&nbsp;&nbsp;&nbsp;{{_t('month/date/year time local')}} *" required>
                                                {{--<input type="datetime-local" id="currentDate"--}}
                                                       {{--name="date" placeholder="date / time local" required>--}}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-xs-12 col-sm-6">
                                            <label for="inputBranch" class="hidden-xs-down">
                                                {{_t('Please specify th MS Branch')}}
                                                <span class="fontorange">*</span>
                                            </label>
                                            <div class="selectBranchFeedback">
                                                <select class="form-control" id="inputBranch" name="branch" required>
                                                    <option value="" selected="selected">{{_t('Select City or Province')}} *
                                                    </option>
                                                    <option value="Phnom-Penh">{{_t('Phnom Penh')}}</option>
                                                    <option value="Sihanoukville">{{_t('Sihanoukville')}}</option>
                                                    <option value="Seim-Reap">{{_t('Seim Reap')}}</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-xs-12">
                                            <label for="inputMassage" class="hidden-xs-down">{{_t('Comment and
                                                Recommendation')}}</label>
                                            <textarea class="col-xs-12 form-control" name="comment" id="inputMassage"
                                                      style="min-height: 250px" placeholder="{{_t('Comment and Recommendation')}}"
                                                      required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-xs-12 col-sm-6">
                                            <button type="submit" class="btnRedResponsiveMedium">Submit
                                                <img src="{{URL::asset('/')}}ms/img/responsive/arrow-right.png"
                                                     class="btn-arrow-right" alt="">
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endsection
        @section('layout-id-close')
    </div>
@endsection
@section('script')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.9.1/highlight.min.js"></script>
    <script src="{{asset('/')}}ms/datetime/datepicker.js"></script>
    <script src="{{asset('/')}}ms/datetime/datepicker.en.js"></script>
    @parent
    <script>// Create start date
        var start = new Date(),
            prevDay,
            startHours = 8;
        // 09:00 AM
        start.setHours(8);
        start.setMinutes(0);
        // If today is Saturday or Sunday set 10:00 AM
        if ([12, 0].indexOf(start.getDay()) != -1) {
            start.setHours(8);
            startHours = 8
        }
        $('#timepicker-actions-exmpl').datepicker({
            timepicker: true,
            language: 'en',
            startDate: start,
            minHours: startHours,
            maxHours: 16,
            onSelect: function (fd, d, picker) {
                // Do nothing if selection was cleared
                if (!d) return;
                var day = d.getDay();
                // Trigger only if date is changed
                if (prevDay != undefined && prevDay == day) return;
                prevDay = day;
                console.log('updat')
                // If chosen day is Saturday or Sunday when set
                // hour value for weekends, else restore defaults
                if (day == 8 || day == 0) {
                    picker.update({
                        minHours: 8,
                        maxHours: 24
                    })
                } else {
                    picker.update({
                        minHours: 8,
                        maxHours: 24
                    })
                }
            }
        })</script>
@endsection