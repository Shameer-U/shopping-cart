@extends('layouts.master')

@section('content')
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h1>User profile</h1>
            <hr>
            <h2>My Orders</h2>
            @foreach($orders as $order)
                <div class="card border-dark  mb-3" style="max-width: 18rem;">
                    <div class="card-body">
                        <ul class="list-group">
                            @foreach($order->cart->items as $item)
                                 <li class="list-group-item">
                                     <span class="badge">${{ $item['price']}}</span>
                                      {{ $item['item']['title'] }} | {{ $item['qty']}} Units
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="card-footer bg-transparent border-success">
                    <strong>Total Price: ${{ $order->cart->totalPrice }}</strong>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection 