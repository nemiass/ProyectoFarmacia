<?php

namespace app\controller;

use app\Usuario;

class LoginController

{
    private $error;
    public  function getUsuario($usuario, $contraseña)
    {
        $usr = $usuario;
        $pass = $contraseña;

        $usuario = Usuario::traerUser($usuario);

        if (!empty($usuario)) {
            return $usuario;
        } else {
            return false;
        }
    }

    public function validarFormulario($usuario, $contraseña)
    {
        if (empty($usuario) || empty($contraseña)) {
            return header("location:../view/login.php?error=rellene los campos");
        }

        if (!empty($usuario) && !empty($contraseña)) {
            if ($usuario = $this->getUsuario($usuario, $contraseña)) {

                if ($usuario[0]['contraseña'] == $contraseña) {
                    if ($usuario[0]['tipo'] == 'administrador') {
                        $tipo = $usuario[0]["tipo"];
                        $dni = $usuario[0]["dni"];
                        $usuario = $usuario[0]["usuario"];
                        $contraseña = $contraseña[0]["contraseña"];

                        return  header("location:../view/admincatalogo.php?dni=$dni&usuario=$usuario&contraseña=$contraseña");
                    }
                    if ($usuario[0]['tipo'] == 'empleado') {
                        $usuario = $usuario[0]['usuario'];
                        $tipo = $usuario[0]['tipo'];
                        return header("location:../view/empleadoPedidosAtender.php?usuario=$usuario");
                    }

                    if ($usuario[0]['tipo'] == 'cliente') {
                        $usuario = $usuario[0]['usuario'];
                        $tipo = $usuario[0]['tipo'];
                        return header("location:../view/mispedidos.php?usuario=$usuario");
                    }
                } else {
                    return header("location:../view/login.php?error=contraseña  incorrecta");
                }
            } else {
                return header("location:../view/login.php?error=usuario  incorrecta");
            }
        }
    }

    public function crearSession($dni)
    {
        // TODO
    }
}
