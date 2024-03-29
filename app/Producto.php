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

            $sql = "INSERT INTO producto (nombre, precio, caracteristicas, img, id_catalogo)
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



    public  static function actualizarProductos($id, $nombre, $precio, $caracteristicas, $img): int
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE producto
            SET nombre ='$nombre', precio =$precio, caracteristicas='$caracteristicas', img ='$img'
            WHERE id_producto = $id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();

            $db->cerrarConexion();
            return $res = $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public  static function actualizarProductosSinImg($id, $nombre, $precio, $caracteristicas): int
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE producto
            SET nombre ='$nombre', precio =$precio, caracteristicas='$caracteristicas'
            WHERE id_producto = $id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();

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

    public static function getProductosxPedido($id_pedido)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT p.nombre, p.precio, pp.cantidad, 
            SUM(pp.cantidad*p.precio) as subtotal, pe.mensaje
            FROM pedido as pe JOIN pedido_producto as pp 
            ON pe.id_pedido = pp.id_pedido JOIN producto as p 
            ON p.id_producto = pp.id_producto 
            WHERE pe.id_pedido = :idp GROUP BY p.id_producto";

            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                ":idp" => $id_pedido
            ]);
            $producto = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $producto;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
}
