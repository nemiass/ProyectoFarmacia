<?php
namespace Clases;
include_once "../config/autoload.php";
use Clases\ConexionDB as db;

class Producto
{  
    private $nombre;
    private $precio;
    private $caracteristicas;
    private $proveeedor;

    public function __construct($nombre, $precio, $caracteristicas, $proveeedor)
    {
        $this->nombre = $nombre;
        $this->precio = $precio;
        $this->caracteristicas = $caracteristicas;
        $this->proveeedor = $proveeedor;
    }

    public static function getNombre() : array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT nombre from producto ";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $nombre=$respuesta->fetchAll();
            $db->cerrarConexion();
            return $nombre;
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public function setNombre($nombre): void
    {
        $this->nombre = $nombre;
    }

    public function registrarProducto(): void
    {
        $nombre=$this->nombre;
        $precio=$this->precio;
        $descripcion=$this->descripcion;
        $proveedor=$this->proveedor;
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

    public  static function ListarProductos() :array {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from producto";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz=$respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
        
        
    }

    public function actualizarProductos($id,$nombre,$precio,$caracteristicas,$proveedor): void{
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE producto
            SET nombre =$nombre, precio =$precio, caracteristicas=$caracteristicas,proveedor=$proveedor
            WHERE id_producto=$id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
           
            $db->cerrarConexion();
            
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }
}