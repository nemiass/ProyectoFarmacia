<?php

namespace app;

use app\ConexionDB as db;
use app\Usuario;

class Cliente
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

    public function registrarCliente(): int
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO  empleado(nombre, apellido, dni, telefono)
            VALUES(nombre=:n , apellido=:a, dni=:dn, telefono=:tel)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "n" => $this->nombre,
                "a" => $this->apellido,
                "dn" => $this->dni,
                "tel" => $this->telefono
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function ListarClientes(): array
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
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    //  en la calse pedido
    public function crearPedido($cantidad, $fecha, $fecha_entrega, $direccion, $id_producto, $id_cliente)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE cliente SET nombre=:n , apellido=:a, dni=:dn, telefono=:tel)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "n" => $this->nombre,
                "a" => $this->apellido,
                "dn" => $this->dni,
                "tel" => $this->telefono
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
    // cancelar epdido
    public function CancelarPedido($id): int
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "DELETE FROM pedido WHERE id_pedido=$id and estado = pendiente";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "n" => $this->nombre,
                "a" => $this->apellido,
                "dn" => $this->dni,
                "tel" => $this->telefono
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function ListarProductosxCliente($id): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT cantidad,pro.nombre,pro.id_producto,pro.caracteristicas,pro.precio FROM producto as pro JOIN pedido_producto as ped_pro ON pro.id_producto=ped_pro.id_producto JOIN pedido as ped on ped.id_pedido=ped_pro.id_pedido JOIN cliente as cli ON cli.id_cliente=ped.id_cliente WHERE cli.id_cliente=$id";
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
