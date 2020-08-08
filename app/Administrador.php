<?php

namespace app;

use app\ConexionDB as db;
use app\Persona;
use app\Producto;

class Administrador
{
    private $nombre;
    private $apellido;
    private $dni;
    private $telefono;

    public function  __construct($nombre, $apellido, $telefono, $dni)
    {
        $this->nombre = $nombre;
        $this->apellido = $apellido;
        $this->dni = $dni;
        $this->telefono = $telefono;
    }

    public static function getAdministrador($dni): array
    {
        try {
            $db = new ConexionDB();
            $conn = $db->abrirConexion();

            $sql = "SELECT * FROM administrador WHERE dni = :dni";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute(["dni" => $dni]);
            $admin = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $admin;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function actualizarAdministrador()
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE administrador SET nombre=:n , apellido=:a, dni=:dn, telefono=:tel)";
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

    //practicando
    public static function crearProducto(object $Producto): int
    {
        return $Producto->registrarProducto();
    }

    public static function actualizarProducto(object $Producto): int
    {
        return $Producto->actualizarProducto();
    }

    public static function eliminarProducto($id): void
    {
        // TODO, aca el error de borrar en cascade DELETE ON CASCADE
    }
}
