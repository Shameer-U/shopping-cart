@extends('layouts.master')

@section('title')
    Larvel shopping-cart
@endsection

@section('content')
        <div class="container mt-5">
           <div class="row">
                <div class="col-xs-12 col-sm-8 col-md-4">
                <h1>Checkout</h1>
                <h4>Your Total: ${{ $total}}</h4>
                <form action="{{ route('checkout')}}" method="post" id="checkout-form">
                      
                               <div class="form-group">
                                   <label for="name">Name</label>
                                    <input type="text" id="name" class="form-control" required>
                                </div>
                          
                                <div class="form-group">
                                    <label for="address">Address</label>
                                     <input type="text" id="address" class="form-control" required>
                                 </div>
                           
                           
                                <div class="form-group">
                                    <label for="card-name">Card Holder Name</label>
                                     <input type="text" id="card-name" class="form-control" required>
                           
                                <div class="form-group">
                                    <label for="card-number">Credit Card Number</label>
                                     <input type="text" id="card-number" class="form-control" required>
                                 </div>
                           


                        
                                <div class="row">
                                            <div class="form-group col-xs-8 col-sm-6 col-md-4">
                                                <label for="card-expiry-month">Expiration Month</label>
                                                <input type="text" id="card-expiry-month" class="form-control" required>
                                            </div>
                                   
                                            <div class="form-group col-xs-8 col-sm-6 col-md-4">
                                                <label for="card-expiry-year">Expiration Year</label>
                                                <input type="text" id="card-expiry-year" class="form-control" required>
                                            </div> 
                                 </div>   

                           
                                <div class="form-group">
                                    <label for="card-cvc">CVC</label>
                                     <input type="text" id="card-cvc" class="form-control" required>
                                 </div>
                

                      </div>
                       {{ csrf_field() }}
                       <button type="submit" class="btn btn-success">Buy Now</button>
                </form>
            </div>
           </div>
        </div>

@endsection