<?php
namespace app\controller;
use app\Usuario;

$error="faltan datos";
/*validar que las datos no esten vacios*/
if(!empty($_POST['user'])&&!empty($_POST['pass'])){
    
    $user=$_POST['user'];
    $pass= $_POST['pass'];
    
   $matriz = Usuario::allUsuario();
  foreach($matriz as $usuario){
      /*validar usuario*/
    if($user==$usuario['usuario']){
         /*validar usuario*/
        if($pass==$usuario['contraseña']){
            //falta agregar usuario y tipo de usuario al cliente en la base
            //header("Location:../view/login.php?user=$error&pass=$pass");
        }
    } 
  }
    
    
   






















}else{
    header("Location:../../view/login.php?error=$error");
}






?>