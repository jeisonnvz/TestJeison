<?php

namespace App\Http\Controllers;
use App\Http\Controllers\ServiceExtInterface;

class PesoServiceExt implements ServiceExtInterface
{
	// Url de servicio externo a consumir para monitorear la cotizacion de la moneda
	private $urlServiceExt;


	public function __construct(){

		$this->urlServiceExt = "";
	}  

	public function consumeService(){

		$array[0]="Error: Not Implemented";  
		$array[1]= 501;
		return $array;
	}    
}