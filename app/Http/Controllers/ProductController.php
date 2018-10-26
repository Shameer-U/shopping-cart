<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Product;
use Illuminate\Http\Request;

use App\Http\Requests;
//use Sessions;

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
        $cart = new Cart($oldCart);
        $cart->add($product, $product->id);

        $request->session()->put('cart' , $cart);
        dd($request->session()->get('cart'));
        return redirect()->route('product.index');
        
    }
}
