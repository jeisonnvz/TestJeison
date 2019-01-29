<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class UsersController extends Controller
{
    //Obtencion de usuarios
    public function index(Request $request){
        if($request->isjson())
         {
             
        return User::All();
         }else{
            return response()->json(['Error'=>'No estas Autorizado para entrar a esta Pagina json if'], 401,[]);
        }
        return response()->json(['Error'=>'No estas Autorizado para entrar a esta Pagina ni'], 401,[]);
         }
         
//creacion
    public function createUser(Request $request){
        if($request->isjson()) {
            //Vaildacion de campos requeridos
        $data = $this->validate($request,[
            'name' =>'required|max:255',
            'surname'=>'required',
            'username'=>'required',
            'email'=>'required',
            'password'=>'required'

        ]);
        //creacion de usuario 
        $user = User::create([
            'name'=> $data['name'],
            'surname'=> $data['surname'],
            'username'=> $data['username'],
            'email'=> $data['email'],
            'password'=>Hash::make($data['password']),
            'api_token'=>str_random(60)
        ]);
            return response()->json([$user], 201);

        }else{
            return response()->json(['Error'=>'No estas Autorizado para entrar a esta Pagina'], 401);
        }
        
          return response()->json(['Error'=>'No estas Autorizado para entrar a esta Pagina'], 401);
    }
//Actuaizacion de Usuario
    public function updateUser(Request $request, $id){

        if($request->isjson()) {
        try{

        
        $data = $this->validate($request,[
            'name' =>'required|max:255',
            'surname'=>'required',
            'username'=>'required',
            'email'=>'required',
            'password'=>'required'

        ]);
        
        $user = User::findOrFail($id);
        $user->name = $data ['name'];
        $user->surname = $data ['surname'];
        $user->username = $data ['username'];
        $user->email = $data ['email'];
        $user->password = $data ['password'];
        $user->save();

        return response()->json($user, 200);
        
        }catch (ModelNotFoundException $e){

            return  response()->json(['Error'=> 'No Content'], 406);
        }
    } else{

            return response()->json(['Error'=> 'No Content'], 406);
        }

    }

     
      public function deleteUser(Request $request, $id){

        if($request->isjson()) {
            try{
    
            $user = User::findOrFail($id);
        
            $user->delete();
    
            return response()->json($user, 200);
            
            }catch (ModelNotFoundException $e){
    
                return  response()->json(['Error'=> 'No Encontrado'], 406);
            }
        } else{
    
                return response()->json(['Error'=> 'No autorizado'], 406);
            }
    }
    public function getUser(Request $request, $id){

        if($request->isjson()) {
            try{
    
            $user = User::findOrFail($id);
    
            return response()->json($user, 200);
            
            }catch (ModelNotFoundException $e){
    
                return response()->json(['Error'=> 'No Content'], 406);
            }
        } else{
    
                return response()->json(['Error'=> 'No autorizado'], 406);
            }
    }
}
