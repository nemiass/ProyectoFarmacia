<?php
<<<<<<< HEAD
namespace Clases;
include_once "../config/autoload.php";

session_start();
$user=$_POST['usuario'];
$pass=$_POST['password'];
$s= Producto::ListarProductos();
echo $s[0]['nombre'];
=======
use Clases\Usuario;
include "../Usuario.php";
include "../ConexionDB.php";
$error="faltan datos";
/*validar que las datos no esten vacios*/
if(!empty($_POST['user'])&&!empty($_POST['pass'])){
    
    $user=$_POST['user'];
    $pass= $_POST['pass'];
    
   $matriz=Usuario::AllUsuario();
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






>>>>>>> 75a737d6c4930d122badc39afb3b1858d009b4cb
?>