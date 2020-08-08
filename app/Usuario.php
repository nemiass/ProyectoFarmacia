<?php

namespace app;

use app\ConexionDB as db;

class Usuario
{
    private $user;
    private $pass;
    private $tipo;
    private $id_referencia;

    public function __construct($user, $pass)
    {
        $this->user = $user;
        $this->pass = $pass;
    }

    public function setIdReferencia($id)
    {
        $this->id_referencia = $id;
    }
    public function setTipoUsuario($tipo)
    {
        $this->tipo = $tipo;
    }

    public function RegistrarCuenta()
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO usuario(usuario, contraseña, tipo, id_referencia)
            VALUES (:u, :c, :t, :idr)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "u" => $this->user,
                "c" => $this->pass,
                "t" => $this->tipo,
                "idr" => $this->dni,
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
            WHERE id_referencia = :id";
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

    public function hashContraseña()
    {
        // TODO
    }
}
