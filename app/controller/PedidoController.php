<?php

namespace app\controller;

use app\Empleado_pedido;
use app\Pedido;
use app\Pedido_producto;

class PedidoController
{
    function registrarPedido($id_cliente, $dep, $prov, $dist)
    {
        if (isset($_POST['enviar'])) {
            $fecha = $_POST['fecha'];
            $fecha_entrega = date("Y-m-d");
            $direccion = $_POST['direccion'];
            $id_cliente = $id_cliente;
            $pedido = new Pedido($fecha, $fecha_entrega, $direccion, $id_cliente, $dep, $prov,$dist);
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

    function traerDepartamento($id)
    {
        $dep = Pedido::getDepartamento($id);
        return $dep;
    }

    function traerProvincia($id)
    {
        $prov = Pedido::getProvincia($id);
        return $prov;
    }

    function traerDistrito($id)
    {
        $dist = Pedido::getDistrito($id);
        return $dist;
    }
}
