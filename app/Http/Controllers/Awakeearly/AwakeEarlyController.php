<?php

namespace App\Http\Controllers\Awakeearly;

use App\Http\Controllers\Controller;
use App\Models\FormPostCode;
use App\Models\Region;
use Illuminate\Http\Request;

class AwakeEarlyController extends Controller
{
    public function index(Request $request)
    {
        return view('home');
    }
    public function create(Request $request)
    {
        $regions = Region::join('provinces', 'provinces.region_id', 'regions.id');
        if ($request->input('code')) {
            $code = substr($request->input('code'), 0, 2);
            $regions = $regions->where('provinces.province_code', $code)->select('regions.id', 'regions.region_name', 'regions.image')->first();
            if ($regions) {
                $form_post_codes =  new FormPostCode();
                $form_post_codes->region_id = $regions->id;
                $form_post_codes->postcode = $request->input('code');
                $form_post_codes->save();
            }
        }
        return response("สำเร็จ", 200);
    }
    public function getFromPostcode()
    {
        $regions = FormPostCode::orderBy('created_at', 'desc')->first();
        return response($regions, 200);
    }
    //
}
