<?php

namespace app\controller;

use app\Cliente;
use app\Usuario;

class ClienteController
{
    public function Registrar()
    {
        if (isset($_POST["reg"])) {
            $c = array(
                "dni" => $_POST["dni"],
                "nom" => $_POST["nombre"],
                "ape" => $_POST["apellido"],
                "tel" => $_POST["telefono"],
                "usr" => $_POST["usuario"],
                "pass" => $_POST["contraseña"],
                "pass2" => $_POST["contraseña2"],
            );

            $errores = Usuario::Validar($c);

            if ($errores == "0") {
                $cliente = new Cliente($c["nom"], $c["ape"], $c["dni"], $c["tel"]);
                $cliente->registrarCliente();
                $password = password_hash($c["pass"], PASSWORD_BCRYPT);
                $user = new Usuario($c["usr"], $password);
                $user->setDni($c["dni"]);
                $user->setTipo("cliente");
                $user->RegistrarCuenta();
                header("location:index.php?p=productos");
            } else {
                header("location: index.php?p=registrarse&e=$errores");
            }
        }
    }

    public function editardatos()
    {
    }

    public function agregarPedido()
    {
    }

    public function cancelarPedido()
    {
    }

    public function listarproductosxCliente(int $id)
    {
        $productos = Cliente::ListarProductosxCliente($id);
        return $productos;
    }
}
