<?php

namespace App\Http\Controllers\Awakeearly;

use App\Http\Controllers\Controller;
use App\Models\Region;
use Illuminate\Http\Request;

class AwakeEarlyController extends Controller
{
    public function index(Request $request) {
        $regions = Region::join('provinces','provinces.region_id','regions.id');
        if($request->input('code')){
            $code = substr($request->input('code'), 0, 2);
            $regions = $regions->where('provinces.province_code',$code)->select('regions.id','regions.region_name','regions.image');
        }
        $regions = $regions->first();
        return response($regions,200);

    }
    //
}
