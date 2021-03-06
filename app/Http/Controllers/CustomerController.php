<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
use App\CustomerFeedback;
use App\MainLandmark;
use App\SubLandmark;
use Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Razorpay\Api\Api;
use Razorpay\Api\Errors\SignatureVerificationError;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
    public function validatePayment(Request $request){
        $api = new Api(env("RAZORPAY_KEYID"), env("RAZORPAY_SECRET"));
        $success = false;
        $message = "";
        if ( ! empty( $request->razorpay_payment_id ) ) {
        try
            {
                $attributes = array(
                    'razorpay_order_id' => $request->razorpay_order_id,
                    'razorpay_payment_id' => $request->razorpay_payment_id,
                    'razorpay_signature' => $request->razorpay_signature
                );

                $api->utility->verifyPaymentSignature($attributes);
                $success = true;
            }
            catch(SignatureVerificationError $e)
            {
                $success = false;
                $error = 'Razorpay Error : ' . $e->getMessage();
            }
        }
        if ($success === true)
        {
            $html = "Payment success, Signature Verified";
            return response()->json(["success"=>$success,"message"=>$html]);
        }
        else
        {
            return response()->json(["success"=>$success,"message"=>$html],400);
        }
    }
    public function createRazorPayOrder(Request $request){
        $receipt = "rcptid_".rand(1000,9999);
        $currency = "INR";
        $amount = $request->amount;

        $api = new Api(env("RAZORPAY_KEYID"), env("RAZORPAY_SECRET"));
    
        $order = $api->order->create(array(
            'receipt' => $receipt,
            'amount' => $amount,
            'currency' => $currency
            )
          );
          return response()->json(["order_id"=>$order->id]);
    }

    public function getAllLandmark(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'city' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        return response()->json(["success"=>MainLandmark::where('city',$request->city)->get()]);
    }
    public function addFeedback(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' => 'required',
            'title' => 'required',
            'rating'=>'required'
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        try {
            $new_feedback = new CustomerFeedback;
            $new_feedback->customer_id = $input['customer_id'];
            $new_feedback->title = $input['title'];
            $new_feedback->rating = $input['rating'];
            $new_feedback->description = $input['description'];
            $new_feedback->save();
            return response()->json([
                "message"=>"Feedback Received. Thank You",
                "status"=>1
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                "message"=>"Error Occurred in Process. Please try again later.",
                "status"=>0
            ]);
        }
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
        $validator = Validator::make($input, [
            'customer_name' => 'required',
            'phone_number' => 'required|numeric|digits_between:9,20|unique:customers,phone_number',
            'email' => 'required|email|regex:/^[a-zA-Z]{1}/|unique:customers,email',
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        $options = [
            'cost' => 12,
        ];
        $input['status'] = 1;
        $customer = Customer::create($input);
        if (is_object($customer)) {
            return response()->json([
                "result" => $customer,
                "message" => 'Registered Successfully',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong !',
                "status" => 0
            ],400);
        }

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
        $input['id'] = $id;
        $validator = Validator::make($input, [
            'id' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $result = Customer::select('id', 'customer_name','phone_number','email','profile_picture','status')->where('id',$id)->first();

        if (is_object($result)) {
            return response()->json([
                "result" => $result,
                "message" => 'Success',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong...',
                "status" => 0
            ]);
        }
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
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_name' => 'required',
            'phone_number' => 'required|numeric|unique:customers,id,'.$id,
            'email' => 'required|email|unique:customers,id,'.$id
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        if($request->password){
            $options = [
                'cost' => 12,
            ];
            $input['password'] = password_hash($input["password"], PASSWORD_DEFAULT, $options);
            $input['status'] = 1;
        }else{
            unset($input['password']);
        }

        if (Customer::where('id',$id)->update($input)) {
            return response()->json([
                "result" => Customer::select('id', 'customer_name','phone_number','email','profile_picture','status')->where('id',$id)->first(),
                "message" => 'Success',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong...',
                "status" => 0
            ]);
        }

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
    public function otp($phone_number){
        return rand(1111,9999);
    }
    public function createMessage($otp){
        return "Dear Customer, Your Otp for single use is ".$otp.". Only valid for 20 minutes. Keep it confidential.";
    }
    public function sendOtp(Request $request){
        $customer_exist = Customer::where(["phone_number"=>$request->phone_number])->count();
        if($customer_exist == 0){
            return response()->json([
                "message" => 'Cannot Found Phone Number',
                "status" => 0
            ]);
        }
        $random_number = $this->otp($request->phone_number);
        $client = new \GuzzleHttp\Client();
        $client->request('post','http://goodherbwebmart.com/',[
            'form_params'=>[
                'sender_id'=>env('SENDER_ID'),
                'language'=>'english',
                'route'=>"t",
                'numbers'=>$request->phone_number,
                'message'=>$this->createMessage($random_number),
            ],
            'headers' => [
            'authorization' => env('FAST2SMS_APIKEY')
        ]]);

        
        Customer::where(["phone_number"=>$request->phone_number])->update(["otp"=>$random_number]);
        return response()->json([
            "message" => 'Otp Sended',
            "status" => 1
        ]);
    }
    public function login(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'phone_number' => 'required',
            'otp' => 'required'
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $credentials = request(['phone_number', 'otp']);
        $customer = Customer::where(['phone_number'=>$credentials['phone_number'],"otp"=>$credentials['otp']])->first();
        if (!($customer)) {
            return response()->json([
                "message" => 'Invalid email or password',
                "status" => 0
            ]);
        }
        
            if($customer->status == 1){
                Customer::where('id',$customer->id)->update([ 'fcm_token' => $input['fcm_token']]);
                return response()->json([
                    "result" => $customer,
                    "message" => 'Success',
                    "status" => 1
                ]);   
            }else{
                return response()->json([
                    "message" => 'Your account has been blocked',
                    "status" => 0
                ]);
            }
    }

    public function profile_picture(Request $request){

        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' => 'required',
            'profile_picture' => 'required|image|mimes:jpeg,png,jpg,gif,svg'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        if ($request->hasFile('profile_picture')) {
            $image = $request->file('profile_picture');
            $name = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/uploads/images');
            $image->move($destinationPath, $name);
            if(Customer::where('id',$input['customer_id'])->update([ 'profile_picture' => 'images/'.$name ])){
                return response()->json([
                    "result" => Customer::select('id', 'customer_name','phone_number','email','profile_picture','status')->where('id',$input['customer_id'])->first(),
                    "message" => 'Success',
                    "status" => 1
                ]);
            }else{
                return response()->json([
                    "message" => 'Sorry something went wrong...',
                    "status" => 0
                ]);
            }
        }

    }

    public function forgot_password(Request $request){

        $input = $request->all();
        $validator = Validator::make($input, [
            'email' => 'required|email|regex:/^[a-zA-Z]{1}/',
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $customer = Customer::where('email',$input['email'])->first();
        if(is_object($customer)){
            $otp = rand(1000,9999);
            Customer::where('id',$customer->id)->update(['otp'=> $otp ]);
            $mail_header = array("otp" => $otp);
            $this->send_mail($mail_header,'Reset Password',$input['email']);
            return response()->json([
                "result" => Customer::select('id', 'otp')->where('id',$customer->id)->first(),
                "message" => 'Success',
                "status" => 1
            ]);
        }else{
            return response()->json([
                "message" => 'Invalid email address',
                "status" => 0
            ]);
        }
        
    }

    public function reset_password(Request $request){

        $input = $request->all();
        $validator = Validator::make($input, [
            'id' => 'required',
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $options = [
            'cost' => 12,
        ];
        $input['password'] = password_hash($input["password"], PASSWORD_DEFAULT, $options);

        if(Customer::where('id',$input['id'])->update($input)){
            return response()->json([
                "message" => 'Success',
                "status" => 1
            ]);
        }else{
            return response()->json([
                "message" => 'Invalid email address',
                "status" => 0
            ]);
        }
    }

    public function sendError($message) {
        $message = $message->all();
        $response['error'] = "validation_error";
        $response['message'] = implode('',$message);
        $response['status'] = "0";
        return response()->json($response, 500);
    } 

}
