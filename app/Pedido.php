<?php

namespace app;

use app\ConexionDB as db;

class Pedido
{
    private $cantidad;
    private $fecha;
    private $fecha_entrega;
    private $fechaEntrega;
    private $direccion;

    public function __construct($cantidad, $fecha, $fechaEntrega)
    {
        $this->cantidad = $cantidad;
        $this->fecha = $fecha;
        $this->fechaEntrega = $fechaEntrega;
    }

    public function getCantidad(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT cantidad from pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $cantidad = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $cantidad;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function setCantidad($cantidad): void
    {
        $this->cantidad = $cantidad;
    }

    public function getFecha()
    {
        return $this->fecha;
    }

    public function setFecha($fecha): void
    {
        $this->fecha = $fecha;
    }

    public function getFechaEntrega()
    {
        return $this->fechaEntrega;
    }


    public function setFechaEntrega($fechaEntrega): void
    {
        $this->fechaEntrega = $fechaEntrega;
    }

    public  static function ListarPedidosAtendidos(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT fecha_entrega,direccion,SUM(cantidad*precio) as total,CONCAT( emp.nombre,' ',emp.apellido ) as empleado,CONCAT( cli.nombre,' ',cli.apellido ) as cliente FROM pedido as ped JOIN pedido_producto as ped_pro on ped.id_pedido=ped_pro.id_pedido JOIN producto as pro on pro.id_producto=ped_pro.id_producto JOIN empleado_pedido as emp_ped on emp_ped.id_pedido=ped.id_pedido JOIN empleado as emp on emp.id_empleado=emp_ped.id_empleado JOIN cliente as cli on cli.id_cliente=ped.id_cliente GROUP BY ped.id_pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function PedidoRealizado($id): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT ped.id_pedido,ped.fecha,ped.direccion,CONCAT( emp.nombre,' ',emp.apellido )as empleado,sum(prod.precio*ped_prod.cantidad) as total from cliente as cli join pedido as ped ON cli.id_cliente=ped.id_cliente JOIN empleado_pedido as emp_ped ON emp_ped.id_pedido=ped.id_pedido JOIN empleado as emp ON emp.id_empleado=emp_ped.id_empleado JOIN pedido_producto as ped_prod on ped_prod.id_pedido=ped.id_pedido JOIN producto as prod  on prod.id_producto=ped_prod.id_producto WHERE cli.id_cliente=$id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    

}
