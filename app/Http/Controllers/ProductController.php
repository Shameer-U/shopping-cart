<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Product;
use Illuminate\Http\Request;

use App\Http\Requests;
use Session;
use Stripe\Stripe;
use Stripe\Charge;


class ProductController extends Controller
{
    public function getIndex(){

        $products = Product::all(); 
        return view('shop.index', ['products' => $products]);
    }

    public function getAddToCart(Request $request, $id){
        $product = Product::find($id);
        //$oldCart = Session::has('cart') ? Session::get('cart') : null;
        $oldCart = $request->session()->has('cart') ? $request->session()->get('cart') : null;
        
        //dd(print_r($oldCart));
        $cart = new Cart($oldCart);
        $cart->add($product, $product->id);
      
        //dd(print_r($oldCart));

        $request->session()->put('cart' , $cart);
        //dd($request->session()->get('cart'));
        return redirect()->route('product.index');
        
    }

    public function getCart() {

        if(!Session::has('cart')){
            return view('shop.shopping-cart');
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        return view('shop.shopping-cart', ['products' => $cart->items,
        'totalPrice' => $cart->totalPrice]);

    }

    public function getCheckout() {
        if(!Session::has('cart')){
            return view('shop.shopping-cart');
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $total = $cart->totalPrice;
        return view('shop.checkout', ['total' => $total]);
    }

    public function postCheckout(Request $request){
        if(!Session::has('cart')){
            return redirect()->route('shop.shopping-cart');
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);

         Stripe::setApiKey('sk_test_HZrQDqIEHaWTPe9Kl0L7NDX0');
         try{
            Charge::create([
                "amount" => $cart->totalPrice * 100,
                "currency" => "usd",
                "source" => "tok_visa",//$request->input('stripeToken'), // obtained with Stripe.js
                "description" => "Test Charge"
              ]);
         } catch(\Exception $e){
             return redirect()->route('checkout')->with('error' , $e->getMessage());

         }

         Session::forget('cart');
         return redirect()->route('product.index')->with('success', 'Successfully purchased');
    }
}
