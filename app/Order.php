<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
   public function user(){
       return $this->belongsTo('App\User');
   } 

   /*
     notice " return $this->belongsTo('App\User');"  , here the  '$this'  refer to class "Order".
     So the sentence means class 'Order' belongs to class 'User' .
      And this relationship can be used via calling 'user()' [i.e,  public function user()]. 
   */ 
}
