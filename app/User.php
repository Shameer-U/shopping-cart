<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
              'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
     
    /* Note the plural 'orders' in   public function orders() */ 
    public function orders(){
        return $this->hasMany('App\Order');
    }

    /*
     note "return $this->hasMany('App\Order');", here the "$this" refe to class "User".
     so the entire sentence means class 'User' has many 'Order'. 
      And this relationship can be used via calling 'orders()' [i.e,  public function orders()]. 
    */ 
}
