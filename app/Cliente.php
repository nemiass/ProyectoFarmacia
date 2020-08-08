<?php

namespace app;

use app\ConexionDB as db;

class Cliente
{
    private $nombre;
    private $apellido;
    private $dni;

    public function getNombre(): string
    {
        return $this->nombre;
    }

    public function setNombre($nombre): void
    {
        $this->nombre = $nombre;
    }

    public function setApellido($apellido): void
    {
        $this->apellido = $apellido;
    }

    public function getApellido(): int
    {
        return $this->apellido;
    }

    public function setDni($dni): void
    {
        $this->dni = $dni;
    }

    public function getDni(): int
    {
        return $this->dni;
    }

    public function registrarse(): void
    {
        $nombre = $this->nombre;
        $apellido = $this->apellido;
        $dni = $this->dni;
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO cliente(id_cliente,nombre,apellido,dni)
            VALUES ($nombre,$apellido,$dni)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();

            $db->cerrarConexion();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public  static function ListarClientes(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from cliente";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function ListarCliente($id)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * FROM cliente WHERE id_cliente=?";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([$id]);
            $cliente = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $cliente;
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public function crearPedido($cantidad,$fecha,$fecha_entrega,$direccion,$id_producto,$id_cliente)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO pedido (id_pedido,cantidad, fecha,fecha_entrega,direccion,id_producto,id_cliente)
            VALUES ( $cantidad,  $fecha,$fecha_entrega,$direccion, $id_producto, $id_cliente)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();

            $db->cerrarConexion();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function eliminarPedido($id): void
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "DELETE FROM pedido WHERE id_pedido=$id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();

            $db->cerrarConexion();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public  static function ListarProductosxCliente($id) :array {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT cantidad,pro.nombre,pro.id_producto,pro.caracteristicas,pro.precio FROM producto as pro JOIN pedido_producto as ped_pro ON pro.id_producto=ped_pro.id_producto JOIN pedido as ped on ped.id_pedido=ped_pro.id_pedido JOIN cliente as cli ON cli.id_cliente=ped.id_cliente WHERE cli.id_cliente=$id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz=$respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
        
        
    }
}
