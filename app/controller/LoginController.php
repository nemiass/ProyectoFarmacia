<?php
namespace app\controller;
use app\Usuario;

class LoginController

{ private $error;
    public  function getUsuario($usuario, $contraseña)
    {
        // en la base usuario = carlos
        // contraseña = 12345678
        $usr = $usuario;
        $pass = $contraseña;


        // aca esan guardados los datos de usuario, incluso el pasword encriptado de 64 caracteres
        $usuario = Usuario::traerUser($usuario);

        if(!empty($usuario)){

            // TODO: puedes validar o cambiar la logica de como validar al ususiro con 
            // la contraseña hasheada etc,

            // causa necesitamos preguntar el inge eso del autoload y como aplicar a las tres capas
            // como se hace un controller para peticiones ajax??
            return $usuario;

        }
        else {
            return false;
        }
    }

    public function validarFormulario($usuario, $contraseña){
        if(empty($usuario)&&empty($contraseña)){
            return header("location:../view/login.php?error=rellene los campos");
        }
        if(empty($usuario)){
            if(!empty($contraseña)){
                return header("location:../view/login.php?error=ingrese el usuario");
            }
        }
        if(empty($contraseña)){
            if(!empty($usuario)){
                return header("location:../view/login.php?error=ingrese la contraseña");
            }
        }
        if(!empty($usuario)&&!empty($contraseña)){
          if($usuario=$this->getUsuario($usuario, $contraseña)){
              var_dump($usuario);
             if($usuario[0]['contraseña']==$contraseña){
             if($usuario[0]['tipo']=='administrador'){
                $usuario=$usuario[0]['usuario'];
                $tipo=$usuario[0]['tipo'];
                    return header("location:../view/admincatalogo.php?usuario=$usuario");
             }
             if($usuario[0]['tipo']=='empleado'){
                $usuario=$usuario[0]['usuario'];
                $tipo=$usuario[0]['tipo'];
                   return header("location:../view/empleadoPedidosAtender.php?usuario=$usuario");
            }
             }
             if($usuario[0]['tipo']=='cliente'){
                $usuario=$usuario[0]['usuario'];
                $tipo=$usuario[0]['tipo'];
                    return header("location:../view/mispedidos.php?usuario=$usuario");
             }
             }else{
            return header("location:../view/login.php?error=contraseña  incorrecta");
             }
          }else{
            return header("location:../view/login.php?error=usuario  incorrecto");
          }
        }
    }
   


    
  


?>