<?php

namespace app\controller;

use app\Empleado_pedido;
use app\Pedido;
use app\Pedido_producto;

class PedidoController
{
    function registrarPedido($id_cliente, $dep, $prov, $dist, $monto)
    {
        if (isset($_POST['enviar'])) {
            $fecha = $_POST['fecha'];
            $fecha_entrega = date("Y-m-d");
            $direccion = $_POST['direccion'];
            $id_cliente = $id_cliente;
            $pedido = new Pedido($fecha, $fecha_entrega, $direccion, $id_cliente, $dep, $prov, $dist, $monto);
            $ped = $pedido->registrarPedido();
            return $ped;
        }
    }

    function registrarPedidoProducto($cantidad, $id_prod, $id_pedido, $id_producto)
    {
        if (isset($_POST['enviar'])) {
            $ped_pro = new Pedido_producto($cantidad, $id_prod, $id_pedido, $id_producto);
            $ped_pro->registrarPedido_producto();
        }
    }
    function listarPedidosAtendidos()
    {
        $pedido = Pedido::ListarPedidosAtendidos();
        return $pedido;
    }

    function nuevoPedido()
    {
        $_SESSION["Productos"] = null;
    }

    function listarPedidosAtendidosempleado($id)
    {
        $pedido = Pedido::PedidoRealizadoEmpleado($id);
        return $pedido;
    }

    function listarpedidosaAtender()
    {
        $pedido = Pedido::PedidoaAtender();
        return $pedido;
    }

    function registrarEmpleado_pedido()
    {
        if (isset($_POST['enviar'])) {
            $id_pedido = $_POST['id_pedido'];
            $id_empleado = $_POST['id_empleado'];
            $empleado_pedido = new Empleado_pedido($id_empleado, $id_pedido);
            $empleado_pedido->registrarEmpleado_pedido();
            Pedido::actualizarEstado($id_pedido);
        }
    }

    function detallesaAtender($id_cliente, $id_pedido)
    {
        $pedido = Pedido::detallesaAtender($id_cliente, $id_pedido);
        return $pedido;
    }


    function PedidosAtendidos($id_empleado)
    {
        $pedido = Pedido::pedidos_atendido($id_empleado);
        return $pedido;
    }

    function traerDepartamentos()
    {
        $dep = Pedido::getDepartamentos();
        return $dep;
    }

    public function addDepartamento()
    {
        if (isset($_POST["send"])) {
            if ($_POST["nomd"] != "") {
                $nombre = $_POST["nomd"];
                Pedido::addDepartamento($nombre);
                header("location: index.php?p=adminFarmacia");
            }
        }
    }

    function traerDepartamento($id)
    {
        $dep = Pedido::getDepartamento($id);
        return $dep;
    }

    public function deleteDepartamento()
    {
        if (isset($_GET["idp"])) {
            $id_dep = $_GET["idp"];
            if (Pedido::deleteDepartamento($id_dep)) {
                header("location: index.php?p=adminFarmacia");
            }
            return false;
        }
    }

    function traerProvincia($id)
    {
        $prov = Pedido::getProvincia($id);
        return $prov;
    }

    public function getAllProvincias()
    {

        $provincias = Pedido::getAllProvincias();
        if (!empty($provincias)) {
            return $provincias;
        }
        return "vacio";
    }

    function traerDistrito($id)
    {
        $dist = Pedido::getDistrito($id);
        return $dist;
    }

    public static function validar()
    {
        // valida si los datos el pedido estan rellenados
        $datos = array(
            "dep" => $_POST["dep"],
            "prov" => $_POST["prov"],
            "dist" => $_POST["dist"],
            "dir" => $_POST["direccion"],
            "fec" => $_POST["fecha"]
        );

        foreach ($datos as $d) {
            if ($d == "") {
                return false;
            }
        }
        return true;
    }

    public function pedidoxCliente($id_cliente)
    {
        //pedidos pendientes del cliente
        $pedidos = Pedido::getPedidoxCliente($id_cliente);
        return $pedidos;
    }

    public function pedidoEntregado($id_cliente)
    {
        //pedidos entregados del cliente
        $pedidos = Pedido::getPedidoEntregado($id_cliente);
        return $pedidos;
    }

    public function cancelarPedido($id_pedido)
    {
        //metodo que jecuta el empleado apra cancelar un pedido
        if (isset($_POST["send"])) {
            if ($_POST["msg"] != "") {
                $msg = $_POST["msg"];
                if (Pedido::cancelarPedido($id_pedido, $msg)) {
                    return "Pedido cancelado exitosamente";
                }
                return "error al cancelar pedido";
            }
        }
    }

    public function anularPedido()
    {
        // metodo que ejecuta el ciente para anular su pedido
        if (isset($_GET["idp"])) {
            $id_pedido = $_GET["idp"];
            if (Pedido::anularPedido($id_pedido)) {
                header("location: index.php?p=misPedidos");
            }
        }
    }
}
