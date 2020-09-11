<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;
use App\Order;
use App\BannerImage;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
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
        $input = $request->all();
        if($input['lang'] == 'en'){
            $data = Service::where('status',1)->select('id','service_name','description','image','status')->get();
        }else if($input['lang'] == 'gj'){
            $data = Service::where('status',1)->select('id','service_name_gj as service_name','description_gj as description','image','status')->get();
        }
        else if($input['lang'] == 'hi'){
            $data = Service::where('status',1)->select('id','service_name_hi as service_name','description_hi as description','image','status')->get();
        }
        $banners = BannerImage::select('banner_image as url')->get();
        
        foreach($banners as $key => $value){
            $banners[$key]->url = env('APP_URL').'/uploads/'.$value->url;
        }
        
        $order['active'] = Order::where('customer_id',$input['customer_id'])->where('status','!=',7)->count();
        $order['completed'] = Order::where('customer_id',$input['customer_id'])->where('status',7)->count();

        return response()->json([
            "result" => $data,
            "banner_images" => $banners,
            "order" => $order,
            "count" => count($data),
            "message" => 'Success',
            "status" => 1
        ]);
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
