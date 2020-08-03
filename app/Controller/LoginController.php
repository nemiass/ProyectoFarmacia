<?php
use Clases\Usuario;
include "../Model/Usuario.php";
include "../Model/ConexionDB.php";
$error="faltan datos";
/*validar que las datos no esten vacios*/
if(!empty($_POST['user'])&&!empty($_POST['pass'])){
    $user=$_POST['user'];
    $pass= $_POST['pass'];
    
   $matriz=Usuario::AllUsuario();
  foreach($matriz as $usuario){
    if($user==$usuario['usuario']){
        if($pass==$usuario['contraseña']){
            header("Location:../view/login.php?error=$error");
        }
    } 
  }
    /*validar usuario*/
    
   
}else{
    header("Location:../view/login.php?error=$error");
}






?>