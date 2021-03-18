<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Company;
use App\Models\User;
use Auth;
use Hash;

class SettingController extends Controller
{

    public function company(Request $request){

        $request->validate([
            'name'     =>  'required',
            'title'    =>  'required',
            'pro_name' =>  'required',
            'address'  =>  'required',
            'phone'    =>  'required',
            'email'    =>  'required',
        ]);


        if(empty($request->id)){

            $company = new Company;
            $company->name = $request->name;
            $company->title = $request->title;
            $company->pro_name = $request->pro_name;
            $company->address = $request->address;
            $company->phone = $request->phone;
            $company->email = $request->email;
            $company->save();
        }
        else{
            
            $company = Company::first();
            $company->name = $request->name;
            $company->title = $request->title;
            $company->pro_name = $request->pro_name;
            $company->address = $request->address;
            $company->phone = $request->phone;
            $company->email = $request->email;
            $company->save();
        }


    }

    public function updateuser(Request $request){
        
        $request->validate([
            'name'     =>  'required',
            'email'    =>  'required',
            'password' =>  'required',
        ]);

        if (Hash::check($request->password, auth()->user()->password)) {
          $user = User::find(auth()->user()->id);
          $user->name = $request->name;
          $user->email = $request->email;
          $user->save();
        }else{
            return response()->json([
                                    'message' => 'The given data was invalid.',
                                    'errors' => [
                                        'password' => ['Password does not match.'],
                                    ]
                                ], 422);
        }
    }

    public function updatepass(Request $request){
        
        $request->validate([
            'current_password'  =>  'required',
            'password'          =>  'required|string|min:10|confirmed',
        ]);

        if (Hash::check($request->current_password, auth()->user()->password)) {

          $user = User::find(auth()->user()->id);
          $user->password = Hash::make($request->password);
          $user->save();
          
        }else{
            return response()->json([
                                    'message' => 'The given data was invalid.',
                                    'errors' => [
                                        'current_password' => ['Current Password does not match.'],
                                    ]
                                ], 422);
        }
    }

}
