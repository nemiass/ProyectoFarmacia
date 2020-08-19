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
    private $id_cliente;

    public function __construct($fecha, $fecha_entrega, $direccion,$id_cliente)
    {
        $this->fecha = $fecha;
        $this->fecha_entrega = $fecha_entrega;
        $this->direccion=$direccion;
        $this->id_cliente=$id_cliente;
    }

    public function registrarPedido(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO  pedido(fecha,fecha_entrega, direccion,estado,id_cliente)
            VALUES('$this->fecha_entrega ','$this->fecha','$this->direccion', 'pendiente',$this->id_cliente)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $sql = "SELECT * FROM pedido ORDER by id_pedido DESC LIMIT 1";
            $respuesta1 = $conn->prepare($sql);
            $respuesta1->execute();
            $pedido = $respuesta1->fetchAll();
            $db->cerrarConexion();
            return $pedido;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
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

            $sql = "SELECT cli.id_cliente,fecha_entrega,direccion,SUM(cantidad*precio) as total,CONCAT( emp.nombre,' ',emp.apellido ) as empleado,CONCAT( cli.nombre,' ',cli.apellido ) as cliente,ped.id_pedido FROM pedido as ped JOIN pedido_producto as ped_pro on ped.id_pedido=ped_pro.id_pedido JOIN producto as pro on pro.id_producto=ped_pro.id_producto JOIN empleado_pedido as emp_ped on emp_ped.id_pedido=ped.id_pedido JOIN empleado as emp on emp.id_empleado=emp_ped.id_empleado JOIN cliente as cli on cli.id_cliente=ped.id_cliente GROUP BY ped.id_pedido";
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

            $sql = "SELECT ped.id_pedido,ped.fecha,ped.direccion,CONCAT( emp.nombre,' ',emp.apellido )as empleado,sum(prod.precio*ped_prod.cantidad) as total from cliente as cli join pedido as ped ON cli.id_cliente=ped.id_cliente JOIN empleado_pedido as emp_ped ON emp_ped.id_pedido=ped.id_pedido JOIN empleado as emp ON emp.id_empleado=emp_ped.id_empleado JOIN pedido_producto as ped_prod on ped_prod.id_pedido=ped.id_pedido JOIN producto as prod  on prod.id_producto=ped_prod.id_producto WHERE cli.id_cliente=$id  GROUP BY ped.id_pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }


    public static function subtotal($id,$id2): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT ped.id_pedido,ped.fecha,sum(prod.precio*ped_prod.cantidad) as total from cliente as cli join pedido as ped ON cli.id_cliente=ped.id_cliente JOIN empleado_pedido as emp_ped ON emp_ped.id_pedido=ped.id_pedido JOIN empleado as emp ON emp.id_empleado=emp_ped.id_empleado JOIN pedido_producto as ped_prod on ped_prod.id_pedido=ped.id_pedido JOIN producto as prod  on prod.id_producto=ped_prod.id_producto WHERE cli.id_cliente=$id AND ped.id_pedido=$id2   GROUP BY ped.id_pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function PedidoRealizadoEmpleado($id): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT cli.id_cliente,ped.fecha,ped.direccion,CONCAT( cli.nombre,' ',cli.apellido )as cliente,sum(prod.precio*ped_prod.cantidad) as total,ped.id_pedido from cliente as cli join pedido as ped ON cli.id_cliente=ped.id_cliente JOIN empleado_pedido as emp_ped ON emp_ped.id_pedido=ped.id_pedido JOIN empleado as emp ON emp.id_empleado=emp_ped.id_empleado JOIN pedido_producto as ped_prod on ped_prod.id_pedido=ped.id_pedido JOIN producto as prod  on prod.id_producto=ped_prod.id_producto  WHERE emp.id_empleado=$id   GROUP BY ped.id_pedido";
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
