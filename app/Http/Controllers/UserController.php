<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use Auth;
use Session;

class UserController extends Controller
{
    public function getSignup() {
        return view('user.signup');
    }

    public function postSignup(Request $request){
        $this->validate($request, [
            'email' => 'email|required|unique:users',
            'password' => 'required|min:4'
        ]);
        
        //Another way of forming an object
         
        $user = new User([
            'email' => $request->input('email'),
            'password'  => bcrypt($request->input('password'))
        ]);
        /* This is same as
          $user = new User();
          $user->email = $request->input('email');
          $user->password = bcrypt($request->input('password'));
        */ 
        $user->save();/*saved to 'users' table in database */

        Auth::login($user);

        if(Session::has('oldUrl')){
            $oldUrl = Session::get('oldUrl');
            Session::forget('oldUrl');
            return redirect()->to($oldUrl);
        }

        return redirect()->route('user.profile');
    }


    public function getSignin() {
        return view('user.signin');
    }

    public function postSignin(Request $request){
        $this->validate($request, [
            'email' => 'email|required',
            'password' => 'required|min:4'
        ]);
    
        if(Auth::attempt(['email' => $request->input('email'), 'password' 
        => $request->input('password')])){

            if(Session::has('oldUrl')){
                $oldUrl = Session::get('oldUrl');
                Session::forget('oldUrl');
                return redirect()->to($oldUrl);
            }
            return redirect()->route('user.profile');
        }

        return redirect()->back();
        
    }

    public function getProfile() {
        $orders = Auth::user()->orders;
        /*data from  'orders' table of a particular user is taken
        
           The usual way of taking data from database table is
           $orders = Order::all();
                or
            $orders = Order::find($id);

            here the difference is becoz we are taking data
            through a 'user' using 'one to many' relationship

        */
        $orders->transform(function($order, $key){
            $order->cart = unserialize($order->cart);
            return $order;
        });
        return view('user.profile', ['orders' => $orders]);
    }

    public function getLogout() {
        Auth::logout();
       // return redirect()->back();

        return redirect()->route('user.signin');
    }


}
