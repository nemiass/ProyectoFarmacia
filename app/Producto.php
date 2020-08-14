<?php

namespace app;

use app\ConexionDB as db;

class Producto
{
    private $nombre;
    private $precio;
    private $caracteristicas;
    private $imagen;
    private $id_catalogo;

    public function __construct($nombre, $precio, $caracteristicas, $img, $id_catalogo)
    {
        $this->nombre = $nombre;
        $this->precio = $precio;
        $this->caracteristicas = $caracteristicas;
        $this->imagen = $img;
        $this->id_catalogo = $id_catalogo;
    }

    public function setNombre($nombre): void
    {
        $this->nombre = $nombre;
    }

    public function registrarProducto(): int
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO producto (null,nombre, precio, caracteristicas, imagen, id_catalogo)
            VALUES (:n, :p, :c, :img, :idc)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "n" => $this->nombre,
                "p" => $this->precio,
                "c" => $this->caracteristicas,
                "img" => $this->imagen,
                "idc" => $this->id_catalogo
            ]);

            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function actualizarProductos($id): int
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE producto
            SET nombre = :n, precio = :p, caracteristicas= :c, img = :im, id_catalogo= :idc
            WHERE id_producto = :id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                "n" => $this->nombre,
                "p" => $this->precio,
                "c" => $this->caracteristicas,
                "im" => $this->imagen,
                "idc" => $this->id_catalogo
            ]);

            $db->cerrarConexion();
            return $res = $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function eliminarProducto()
    {
        //TODO: esto al final da problemas (ON DELETE CASCADE)
    }

    public  static function ListarProductos(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * FROM producto as pro join catalogo as cat on cat.id_catalogo=pro.id_catalogo";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
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
