<?php

namespace App\Http\Controllers;
use App\Http\Controllers\ServiceExtInterface;
use App\Http\Controllers\DolarServiceExt;
use App\Http\Controllers\PesoServiceExt;
use App\Http\Controllers\RealServiceExt;

class DolarServiceExt implements ServiceExtInterface
{
  private $urlServiceExt;


  public function __construct(){

    $this->urlServiceExt = "http://www.bancoprovincia.com.ar/Principal/Dolar";
  }  
  
  public function consumeService(){

    $array[0]=json_decode(file_get_contents($this->urlServiceExt),true);  
    $array[1]=200;
    return $array;
    //return file_get_contents($this->urlServiceExt);
  }    

}
	