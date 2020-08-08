<?php

namespace app;

use app\ConexionDB as db;
//include "../config/autoload.php";

class Producto
{
    private $nombre;
    private $precio;
    private $caracteristicas;
    private $id_catalogo;

    public function __construct($nombre, $precio, $caracteristicas, $id_catalogo)
    {
        $this->nombre = $nombre;
        $this->precio = $precio;
        $this->caracteristicas = $caracteristicas;
        $this->id_catalogo = $id_catalogo;
    }

    public static function getNombre(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT nombre from producto ";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $nombre = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $nombre;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function setNombre($nombre): void
    {
        $this->nombre = $nombre;
    }

    public function registrarProducto(): void
    {
        $nombre = $this->nombre;
        $precio = $this->precio;
        $descripcion = $this->descripcion;
        $id_catalogo = $this->id_catalogo;
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO producto (null,nombre, precio,caracteristica,id_catalogo)
            VALUES ($nombre, $precio, $descripcion,$id_catalogo)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();

            $db->cerrarConexion();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public  static function ListarProductos(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from producto";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

 

    public function actualizarProductos($id,$nombre,$precio,$caracteristicas,$id_catalogo): void{
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE producto
            SET nombre =$nombre, precio =$precio, caracteristicas=$caracteristicas,id_catalogo=$id_catalogo
            WHERE id_producto=$id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();

            $db->cerrarConexion();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function traerProducto($id)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * FROM producto WHERE id_producto=?";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([$id]);
            $producto = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $producto;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
}
