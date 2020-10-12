<?php

namespace App\Http\Controllers;
use App\Order;
use App\Customer;
use Illuminate\Http\Request;
use App\PromoCode;

class PromoCodeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {   
        $input = $request->all();
        if($input['lang'] == 'en'){
            $data = PromoCode::where('status',1)->select('id','promo_name','promo_code','description','promo_type','discount','status','max_used','service_id','is_hide')->get();
        }else if($input['lang'] == 'gj'){
            $data = PromoCode::where('status',1)->select('id','promo_name_gj as promo_name','promo_code','description_gj as description','promo_type','discount','status','max_used','service_id','is_hide')->get();
        }else if($input['lang'] == 'hi'){
            $data = PromoCode::where('status',1)->select('id','promo_name_hi as promo_name','promo_code','description_hi as description','promo_type','discount','status','max_used','service_id','is_hide')->get();
        }
	//return $data;
	$last = [];
        foreach($data as $item){
            $is_avaible = Order::where(["customer_id"=>$request->customer_id,"promo_id"=>$item->id])->count();
//return $is_avaible;    
//dd($item['max_used']);       
 if($is_avaible >= $item['max_used']){
//return ":cinubf ger/";                
continue;
            }
            array_push($last,$item);
        }
        $last2 = [];
//return $last;
        foreach($last as $item){
            $flag = true;
            $find_ids = array();
            if(in_array($request->service_id,explode(',',$item['service_id']))){
                array_push($last2,$item);
            }
        }

        return response()->json([
            "result" => $last2,
            "count" => count($last2),
            "message" => 'Success',
            "status" => 1
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
