<?php

namespace app;

use app\ConexionDB as db;

class Empleado
{
    private $nombre;
    private $apellido;
    private $dni;
    private $telefono;

    public function  __construct($nombre, $apellido, $dni, $telefono)
    {
        $this->nombre = $nombre;
        $this->apellido = $apellido;
        $this->dni = $dni;
        $this->telefono = $telefono;
    }

    public function registrarEmpleado(): int
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO  empleado(nombre, apellido, dni, telefono)
            VALUES(:n , :a, :dn, :tel)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                ":n" => $this->nombre,
                ":a" => $this->apellido,
                ":dn" => $this->dni,
                ":tel" => $this->telefono
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function actualizarEmpledo(): int
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE empleado SET nombre=:n , apellido=:a, dni=:dn, telefono=:tel)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                ":n" => $this->nombre,
                ":a" => $this->apellido,
                ":dn" => $this->dni,
                ":tel" => $this->telefono
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function eliminarEmpleado($dni): void
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "DELETE FROM empleado where dni =$dni";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $db->cerrarConexion();
           
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public  static function ListarEmpleado(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from empleado ";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public  static function traerEmpleado($dni): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from empleado WHERE dni=$dni";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
    
    public static function ListarProductosxEmpleado($id,$id2): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT fecha_entrega,direccion,cantidad,pro.nombre,pro.id_producto,pro.caracteristicas,pro.precio FROM producto as pro JOIN pedido_producto as ped_pro ON pro.id_producto=ped_pro.id_producto JOIN pedido as ped on ped.id_pedido=ped_pro.id_pedido JOIN cliente as cli ON cli.id_cliente=ped.id_cliente WHERE cli.id_cliente=$id AND ped.id_pedido=$id2";
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

}
