<?php

namespace app\controller;

use app\Usuario;
use app\Empleado;
use app\Cliente;

class RegistroController
{
    public function Registrar($usuario = "cliente")
    {
        if (isset($_POST["resgistrar"])) {
            $c = array(
                "dni" => $_POST["dni"],
                "nom" => $_POST["nombre"],
                "ape" => $_POST["apellido"],
                "tel" => $_POST["telefono"],
                "usr" => $_POST["usuario"],
                "pass" => $_POST["contraseña"]
            );
            if (Usuario::Validar($c)) {
                $user = new Usuario($c["nom"], $c["ape"], $c["dni"]);
            } else {
            }
        }
    }
}
