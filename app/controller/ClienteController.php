<?php

namespace app\controller;

use app\Cliente;
use app\Producto;
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
                "pass" => $_POST["contraseña"]
            );

            if (Usuario::Validar($c)) {
                $cliente = new Cliente($c["nom"], $c["ape"], $c["dni"], $c["tel"]);
                $cliente->registrarCliente();
                //$nuew_pass = Usuario::hashContraseña($c["pass"]);
                $user = new Usuario($c["usr"], $c["pass"]);
                $user->setDni($c["dni"]);
                $user->setTipo("cliente");
                $user->RegistrarCuenta();
                header("Location:index.php?p=productos");
            } else {
                header("Location: index.php");
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
