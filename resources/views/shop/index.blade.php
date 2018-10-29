@extends('layouts.master')

@section('title')
    Larvel shopping-cart
@endsection

@section('content')
    @if(Session::has('success'))
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div id="charge-message" class="alert alert-success">
                    {{ Session::get('success')}}
                </div>
            </div>
        </div>
     @endif
     
      @foreach ($products->chunk(3) as $productChunk)
            <div class="row mt-5">
                @foreach ($productChunk as $product)
                    
                       <div class="col-sm-6 col-md-4">
                            <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="{{ $product->imagePath }}" alt="Card image cap" class="img-responsive">
                                    <div class="card-body">
                                    <h5 class="card-title">{{ $product->title }}</h5>
                                    <p class="card-text description">{{ $product->description }}</p>
                                    <div class="clearfix">
                                        <div class="float-left price">${{ $product->price }}</div>
                                    <a href="{{ route('product.addToCart',['id' => $product->id] )}}" class="btn btn-primary float-right">Add to Cart</a>
                                    </div>
                                    </div>
                                </div>
                        </div>
                @endforeach
            </div>
          
      @endforeach
        
@endsection