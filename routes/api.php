<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post("validate-payment","CustomerController@validatePayment");
Route::post("create-razorpay-order","CustomerController@createRazorPayOrder");
Route::resource('service', 'ServiceController');
Route::post('faq', 'FaqController@index');
Route::resource('product', 'ProductController');
Route::resource('customer', 'CustomerController');
Route::post('customer/profile_picture', 'CustomerController@profile_picture');
Route::resource('address', 'AddressController');
Route::post('address/all', 'AddressController@all_addresses');
Route::post('address/delete', 'AddressController@delete');
Route::post('customer/login', 'CustomerController@login');
Route::post('customer/otp', 'CustomerController@sendOtp');
Route::post('customer/register_otp', 'CustomerController@registerOtp');

Route::post('customer/forgot_password', 'CustomerController@forgot_password');
Route::post('customer/reset_password', 'CustomerController@reset_password');
Route::post('promo', 'PromoCodeController@index');
Route::get('app_setting', 'AppSettingController@index');
Route::post('privacy_policy', 'PrivacyPolicyController@index');
Route::post('order', 'OrderController@store');
Route::post('get_orders', 'OrderController@getOrders');
Route::post('feedback',"OrderController@updateFeeback");

Route::post('landmark',"CustomerController@getAllLandmark");
Route::post('customer_feedback',"CustomerController@addFeedback");


Route::resource('delivery_partner', 'DeliveryBoyController');
Route::post('delivery_partner/profile_picture', 'DeliveryBoyController@profile_picture');
Route::post('delivery_partner/login', 'DeliveryBoyController@login');
Route::post('delivery_partner/forgot_password', 'DeliveryBoyController@forgot_password');
Route::post('delivery_partner/reset_password', 'DeliveryBoyController@reset_password');
Route::post('order_status_change', 'OrderController@order_status_change');
Route::post('dashboard', 'DeliveryBoyController@dashboard');
Route::post('payment', 'PaymentMethodController@payment');
Route::post('stripe_payment', 'PaymentMethodController@stripe_payment');
