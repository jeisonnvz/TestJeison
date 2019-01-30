<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\ServiceExtInterface;
use App\Http\Controllers\DolarServiceExt;
use App\Http\Controllers\PesoServiceExt;
use App\Http\Controllers\RealServiceExt;

class CotizacionController extends Controller implements ServiceExtInterface
{

public function consumeService(ServiceExtInterface $consumeServiceMethod){

	$consumeServiceMethod->consumeService();
} 

public function validateCurrency(Request $request, $moneda){
  
	if(!$request->isjson()){
		
		return response()->json(['Error'=>'Peticion no tiene formato Json']);
  	
  	}else{

  		if( $moneda == "Dolar"){

			return response()->json(['Dolar'=>'cotizacionToday'], 200);//status ok

		}elseif ($moneda == "Peso"){

			//Servicio no implementado
			return response()->json(['Peso'=>'Error: Aun no hemos implementado un servicio'], 501); 

		}elseif ($moneda == "Real"){
			//Servicio no implementado
			//$array = $this->consumeService(new RealServiceExt);
			//return reponse()->json([$array[0]],$array[1]);
			return response()->json(['Real'=>'Error: Aun no hemos implementado un servicio'], 501);

		} else {

			return response()->json(['Moneda'=>'Error: Moneda no implementada'], 501);
		}
	
	}

 }    
}
	