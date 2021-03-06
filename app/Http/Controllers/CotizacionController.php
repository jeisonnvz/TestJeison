<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\ServiceExtInterface;
use App\Http\Controllers\DolarServiceExt;
use App\Http\Controllers\PesoServiceExt;
use App\Http\Controllers\RealServiceExt;

class CotizacionController extends Controller 
{
	//private $consumeServiceMethod;

public function consumeService(ServiceExtInterface $consumeServiceMethod){
	//faltaba un return para que lo mostrara sigue la secuencia
	return $consumeServiceMethod->consumeService();
} 

public function validateCurrency(Request $request, $moneda){
  
	if(!$request->isjson()){
		
		return response()->json(['Error'=>'Peticion no tiene formato Json']);
  	
  	}else{

  		if( $moneda == "dolar"){

			$array = $this->consumeService(new DolarServiceExt);
			
			return response()->json([$array[0]], $array[1]);//status ok
			

		}elseif ($moneda == "peso"){
			$array = $this->consumeService(new PesoServiceExt);
			//Servicio no implementado
			return response()->json([$array[0]], $array[1]); 

		}elseif ($moneda == "real"){
			//Servicio no implementado
			$array = $this->consumeService(new RealServiceExt);
			//return response()->json($array); 
			return response()->json(['Real'=>'Error: Aun no hemos implementado un servicio'], 501);

		} else {

			return response()->json(['Moneda'=>'Error: Moneda no implementada'], 501);
		}
	
	}

 }    
}

