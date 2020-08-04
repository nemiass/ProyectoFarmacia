<?php
namespace app;
use app\ConexionDB as db;

class Jefe extends Usuario
{
    private $tipo;

    public function  __construct($nombres, $apellidos, $telefono, $dni, $user, $pass)
    {
        parent::__construct($nombres, $apellidos, $telefono, $dni, $user, $pass);
        $this->tipo = "administrador";
    }

    public function getTipo()
    {
        return $this->tipo;
    }

    public static function crearProducto($nombre,$precio,$descripcion,$proveedor)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO producto (id_producto, nombre, precio,caracteristica,proveedor)
            VALUES ($nombre, $precio, $descripcion,$proveedor)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
           
            $db->cerrarConexion();
            
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public static function crearCatalogo($tipo,$id_producto):void
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO catalogo (id_catalogo,tipo,id_producto)
            VALUES ($tipo,$id_producto)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
           
            $db->cerrarConexion();
            
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public static function crearFactura($nombre_far,$precio_uni,$precio_total,$fecha,$id_pedido)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO factura (id_factura,nombres_farmacia,precio_unitario,precio_total,fecha,id_pedido)
            VALUES ($nombre_far,$precio_uni,$precio_total,$fecha,$id_pedido)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
           
            $db->cerrarConexion();
            
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public static function editarFactura($id,$nombre_far,$precio_uni,$precio_total,$fecha):void
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE factura
            SET nombre_farmacia = $nombre_far,precio_unitario=$precio_uni,precio_total=$precio_total,fecha=$fecha
            WHERE id_factura=$id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
           
            $db->cerrarConexion();
            
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public static function eliminarProducto($id):void
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "DELETE FROM producto WHERE id_producto=$id;";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
           
            $db->cerrarConexion();
            
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public static function listarFacturas():array{
        try {
            $db = new ConexionDB();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from factura";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $factura=$respuesta->fetchAll();
            $db->cerrarConexion();
            return $factura;
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }
}