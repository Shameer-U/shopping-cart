@extends('layouts.master')

@section('title')
    Larvel shopping-cart
@endsection

@section('content')
   @if (Session::has('cart'))
       
   
            <div class="row mt-5">
                <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                    <ul class="list-group">
                        @foreach ($products as $product)
                          <li class="list-group-item clearfix">
                                <span class="badge badge-circle badge-success">{{ $product['qty']}}</span>
                                <strong class="ml-4">{{ $product['item']['title']}}</strong>
                                
                                <span class="btn dropdown float-right mr-2">
                                        <a class="dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Action
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        
                                            <a class="dropdown-item" href="#">Reduce by 1</a>
                                            <a class="dropdown-item" href="#">Reduce by All</a>
                                    
                                        </div>
                                </span>
                                <span class="badge badge-primary float-right m-1">{{ $product['price']}}</span>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="row mt-5">
                    <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                    <strong>Total: {{ $totalPrice}}</strong> 
                    </div>
            </div>
            <div class="row mt-5">
                    <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                        <button type="button" class="btn btn-success">Checkout</button> 
                    </div>
            </div>
        @else
            <div class="row mt-5">
                    <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                         <h2>No Items in Cart</h2> 
                    </div>
            </div>
         @endif
        
@endsection