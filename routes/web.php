<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return 'welcome TestApi Currency';// $router->app->version();
});
    
//Rutas de v1 grupo
$router->group(['middelware'=> [], 'prefix'=>'api/v1'] ,function() use ($router){
//CRUD
//Create, Read, Update, Delete
    $router->get('/users', 'UsersController@index');
    $router->get('/users/{id}', 'UsersController@getUser');
    $router->post('/users', 'UsersController@createUser');
    $router->put('/users/{id}', 'UsersController@updateUser');
    $router->delete('/users/{id}', 'UsersController@deleteUser');
});

	$router->get('/{moneda}/quote', 'CotizacionController@validateCurrency');
 por el back creo que estamos bien, eso de los mocos no seeee!! 