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

    public function actualizarCliente()
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

    public function crearPedido()
    {
    }

    public function CancelarPedido($id): int
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "DELETE FROM pedido WHERE id_pedido=$id and estado = pendiente";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
}
