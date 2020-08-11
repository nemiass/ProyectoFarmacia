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

    public static function eliminarEmpleado($id): int
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "DELETE FROM empleado where id = :id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute(["id" => $id]);
            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public  static function ListarEmpleado(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from empleado";
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
