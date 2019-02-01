<?php


 
$router->get('/', function () use ($router) {
    return 'welcome TestApi Currency';// $router->app->version();
});
    $router->group(['prefix'=>'test/api'] ,function() use ($router){
        $router->post('/users/login', 'UsersController@getLogin');
    });
//Rutas de test api
$router->group(['middelware'=> ['auth'], 'prefix'=>'test/api'] ,function() use ($router){
//CRUD
//Create, Read, Update, Delete
    $router->get('/users', 'UsersController@index');
    $router->get('/users/{id}', 'UsersController@getUser');
    $router->post('/users', 'UsersController@createUser');
    $router->put('/users/{id}', 'UsersController@updateUser');
    $router->delete('/users/{id}', 'UsersController@deleteUser');
   
});

	$router->get('/{moneda}/quote', 'CotizacionController@validateCurrency');
 