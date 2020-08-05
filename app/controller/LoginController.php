<?php
namespace app\controller;
use app\Usuario;

class LoginController
{
    public function getUsuario($usuario, $contraseña)
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
            return true;

        }
        else {
            return false;
        }
    }
}

?>