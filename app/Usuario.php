<?php

namespace app;

use app\ConexionDB as db;

class Usuario
{
    private $user;
    private $pass;
    private $tipo;
    private $dni;

    public function __construct($user, $pass)
    {
        $this->user = $user;
        $this->pass = $pass;
    }

    public function setDni($dn)
    {
        $this->dni = $dn;
    }

    public function setTipo($tipo)
    {
        $this->tipo = $tipo;
    }

    public function RegistrarCuenta()
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO usuarios(usuario, contrasenia, tipo, dni)
            VALUES (:u, :c, :t, :dni)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                ":u" => $this->user,
                ":c" => $this->pass,
                ":t" => $this->tipo,
                ":dni" => $this->dni,
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function actualizarCuenta($id)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE usuario set usuario = :u, contraseña =:c)
            WHERE dni = :id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "u" => $this->user,
                "c" => $this->pass,
                "id" => $id
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function traerUser($user): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $query = "SELECT * FROM usuarios where usuario=?";
            $respuesta = $conn->prepare($query);
            $respuesta->execute([$user]);
            $usuario = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $usuario;
        } catch (\PDOException $e) {
            return $e->getMessage();
        }
    }

    public static function Validar($datos): bool
    {
        foreach ($datos as $dato) {
            if (!(preg_match('/^[a-zA-Z0-9]+$/', $dato))) {
                return false;
            }
        }
        return true;
    }

    public function hashContraseña()
    {
        // TODO
    }
}
