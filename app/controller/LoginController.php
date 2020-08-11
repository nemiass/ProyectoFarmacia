<?php

namespace app\controller;

use app\Usuario;
use app\Cliente;

class LoginController
{
    public function iniciarSesion()
    {
        if (isset($_POST["log"])) {
            $l = array(
                "usr" => $_POST["usu"],
                "pass" => $_POST["contra"]
            );
            $e = $this->validarDatos($l);
            if ($e == "0") {
                $usrdb = Usuario::traerUser($l["usr"]);
                $_SESSION["estado"] = true;
                $_SESSION["dni"] = $usrdb[0]["dni"];
                $_SESSION["rol"] = $usrdb[0]["tipo"];
                $_SESSION["user"] = $l["usr"];
                $_SESSION["pass"] = $l["pass"];
                header("location: index.php");
            } else {
                header("location: index.php?p=login&e=$e");
            }
        }
    }

    public function cerrarSession()
    {
        session_unset();
        session_destroy();
    }

    public function validarDatos($datos)
    {
        $errores = "";
        foreach ($datos as $dato) {
            if (!(preg_match('/^[a-zA-Z0-9]+$/', $dato))) {
                return $errores = "rellenes los espacios correctamente";
            }
        }
        if (!($usuario = Usuario::traerUser($datos["usr"]))) {
            return $errores = "usuario no existe";
        } else {
            if (password_verify($datos["pass"], $usuario[0]["contrasenia"])) {
                return $errores = "0";
            }
            return $errores = "contraseña incorrecta";
        }
    }
}
