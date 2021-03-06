<!-- text input -->
@php
    $r_id = rand(1,9999);
    $location_group = isset($field['location_group'])?strtolower($field['location_group']):'location_group';
    $f_id = isset($field['name'])? str_replace(']','',str_replace('[','',$field['name'])) :'location_group_id';
    //$connected_entity = new $field['model'];
    //$connected_entity_key_name = $connected_entity->getKeyName();
    //$old_value = old($field['name']) ? old($field['name']) : (isset($field['value']) ? $field['value'] : (isset($field['default']) ? $field['default'] : false ));
@endphp
<div @include('crud::inc.field_wrapper_attributes') >
    <label>{!! $field['label'] !!}</label>
    @include('crud::inc.field_translatable_icon')

    @if(isset($field['prefix']) || isset($field['suffix'])) <div class="input-group"> @endif
        @if(isset($field['prefix'])) <div class="input-group-addon">{!! $field['prefix'] !!}</div> @endif
        <input house="{{$location_group}}"
            type="text"
            name="{{ $field['name'] }}"
            value="{{ old($field['name']) ? old($field['name']) : (isset($field['value']) ? $field['value'] : (isset($field['default']) ? $field['default'] : '' )) }}"
            @include('crud::inc.field_attributes')
        >
        @if(isset($field['suffix'])) <div class="input-group-addon">{!! $field['suffix'] !!}</div> @endif
    @if(isset($field['prefix']) || isset($field['suffix'])) </div> @endif

    {{-- HINT --}}
    @if (isset($field['hint']))
        <p class="help-block">{!! $field['hint'] !!}</p>
    @endif
</div>


@push('crud_fields_scripts')
    <script>
        $(function () {

            $('[house="{{$location_group}}"]').on('keyup',function () {

                var p = $('[provinces="{{$location_group}}"] option:selected').text();
                var d = $('[districts="{{$location_group}}"] option:selected').text();
                var c = $('[communes="{{$location_group}}"] option:selected').text();
                var v = $('[villages="{{$location_group}}"] option:selected').text();

                var house = $('[house="{{$location_group}}"]').val();
                var street = $('[street="{{$location_group}}"]').val();

                var pp =  $('[provinces="{{$location_group}}"]').val();
                var dd =  $('[districts="{{$location_group}}"]').val();

                var address = '';

                if(pp == 12) {
                    address = 'ផ្ទះលេខ  '+house+'   ផ្លូវលខ  '+street+'  ' + v + '   សង្កាត់ ' + c + '  ខណ្ឌ  ' + d + ' រាជធានីភ្នំពេញ';
                }else {
                    if(dd == 811){
                        address = 'ផ្ទះលេខ  '+house+'  ផ្លូវលខ  '+street+'   ភូមិ   ' + v + '   សង្កាត់ ' + c + ' ក្រុង តាខ្មៅ ';
                    }else {
                        address = 'ផ្ទះលេខ  '+house+'   ផ្លូវលខ  '+street+'   ភូមិ  ' + v + '    ឃុំ  ' + c + ' ស្រុក ' + d + '  ខេត្ត ' + p;
                    }
                }

                $('[address="{{$location_group}}"]').val(address);

            });
        });
    </script>
@endpush

{{-- FIELD EXTRA CSS  --}}
{{-- push things in the after_styles section --}}

    {{-- @push('crud_fields_styles')
        <!-- no styles -->
    @endpush --}}


{{-- FIELD EXTRA JS --}}
{{-- push things in the after_scripts section --}}

    {{-- @push('crud_fields_scripts')
        <!-- no scripts -->
    @endpush --}}


{{-- Note: you can use @if ($crud->checkIfFieldIsFirstOfItsType($field, $fields)) to only load some CSS/JS once, even though there are multiple instances of it --}}