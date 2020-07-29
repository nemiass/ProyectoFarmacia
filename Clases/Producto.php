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

    public function getNombre()
    {
        return $this->nombre;
    }

    public function setNombre($nombre): void
    {
        $this->nombre = $nombre;
    }

    public function registrarProducto(){
        // TODO
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
        catch (PDOException $e){
            echo $e->getMessage();
        }
        
        
    }

    public function actualizarProductos(){
        
    }
}