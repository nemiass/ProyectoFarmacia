<?php

namespace app;

use app\ConexionDB as db;

class Farmacia
{
    private $nombre;
    private $ubicacion;
    private $telefono;
    private $correo;

    public function __construct($nom, $ub, $tel, $corr)
    {
        $this->nombre = $nom;
        $this->ubicacion = $ub;
        $this->telefono = $tel;
        $this->correo = $corr;
    }

    public function registrarFarmacia(): int
    {

        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO farmacia(nombre, ubicacion, telefono, correo) INTO(:n, :u, :t, :c)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "n" => $this->nombre,
                "u" => $this->ubicacion,
                "t" => $this->telefono,
                "c" => $this->correo
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function updateFarmacia($id_admin): int
    {
        $id = $id_admin;

        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE farmaci SET nombre = :n, ubicacion = :u, telefono = :t, correo = :c) 
            WHERE id_admin = :id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "n" => $this->nombre,
                "u" => $this->ubicacion,
                "t" => $this->telefono,
                "c" => $this->correo,
                "id" => $id
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function traerDatosFarmacia(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * FROM farmacia";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $datos = $respuesta->fetchAll();

            $db->cerrarConexion();
            return $datos;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
}
