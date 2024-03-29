<?php

namespace app;

use app\ConexionDB as db;

class Catalogo
{
    private $nombre;
    private $descripcion;

    public function __construct($nombre, $descripcion)
    {
        $this->nombre = $nombre;
        $this->descripcion = $descripcion;
    }

    public function crearCatalogo(): int
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO catalogo (nombre,descripcion)
            VALUES (:n , :d)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "n" => $this->nombre,
                "d" => $this->descripcion
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function actualizarCatalogo($nombre,$descripcion,$id): void
    {
        
           
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE catalogo
            SET nombre = '$nombre', descripcion = '$descripcion'
            WHERE id_catalogo=$id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();

            $db->cerrarConexion();
           
        } catch (\PDOException $e) {
            echo $e->getMessage();
        
    }
    }

    public static function ListarCatalogo(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from catalogo";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function ListarCatalogoxproducto($id_cat): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT pro.id_producto as id_pro,img,pro.nombre as nombre,caracteristicas,precio  FROM catalogo as cat JOIN producto as pro on pro.id_catalogo=cat.id_catalogo WHERE cat.id_catalogo=$id_cat";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function BorrarCatalogo($id)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "DELETE FROM catalogo WHERE id_catalogo = :c";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "c" => $id
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function quitarProductoDeCatalogo($id_producto)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE producto set id_catalogo = null WHERE id_producto = :id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "c" => $id_producto
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
}
