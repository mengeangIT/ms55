<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LanguageController extends Controller
{
    function changeLang($l)
    {
        $arr_lang = ['en', 'km'];
        $la = in_array($l, $arr_lang) ? $l : 'km';
        session(['sess_lang' => $la]);
        return redirect()->back();
    }
}
