<?php

namespace app\controller;

use app\Usuario;

class LoginController
{
    private $error;

    public  function getUsuario(string $usuario)
    {
        $usuario = Usuario::traerUser($usuario);

        if (!empty($usuario)) {
            return $usuario;
        } else {
            return false;
        }
    }

    public function validarFormulario($user, $pass)
    {
        if (empty($user) || empty($pass)) {
            return header("location:../view/login.php?error=rellene los campos");
        }

        if (!empty($user) && !empty($pass)) {
            if ($datousuario = $this->getUsuario($user)) {

                if ($datousuario[0]['contrasenia'] == $pass) {
                    if ($datousuario[0]['tipo'] == 'administrador') {
                        $tipo = $datousuario[0]["tipo"];
                        $dni = $datousuario[0]["dni"];
                        $usuario = $datousuario[0]["usuario"];
                        $contrasenia = $datousuario[0]["contrasenia"];

                        return  header("location:../view/admincatalogo.php?dni=$dni&usuario=$usuario&contrasenia=$contrasenia");
                    }
                    if ($datousuario[0]['tipo'] == 'empleado') {
                        $usuario = $datousuario[0]['usuario'];
                        $tipo = $datousuario[0]['tipo'];
                        return header("location:../view/empleadoPedidosAtender.php?usuario=$usuario");
                    }

                    if ($datousuario[0]['tipo'] == 'cliente') {
                        $usuario = $datousuario[0]['usuario'];
                        $tipo = $datousuario[0]['tipo'];
                        return header("location:../view/mispedidos.php?usuario=$usuario");
                    }
                } else {
                    return header("location:../view/login.php?error=datos incorrecto");
                }
            } else {
                return header("location:../view/login.php?error=datos incorrectos");
            }
        }
    }

    public function crearSession($dni)
    {
        // TODO
    }
}
