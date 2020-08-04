<?php
namespace app;
use app\ConexionDB as db;

class Catalogo
{
    private $tipo;

    public function __construct($tipo)
    {
        $this->tipo = $tipo;
    }

    public function getTipo()
    {
        return $this->tipo;
    }
    public function setTipo($tipo)
    {
        return $this->tipo = $tipo;
    }

    public function registrarCatalogo()
    {
        $nombre=$this->nombre;
        $apellido=$this->apellido;
        $dni=$this->dni;
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO catalogo(id_cliente,nombre,apellido,dni)
            VALUES ($nombre,$apellido,$dni)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
           
            $db->cerrarConexion();
          
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public function agregarProducto($nombre,$precio,$descripcion,$proveedor)
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

    public  static function ListarCatalogo() :array {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from catalogo";
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

    public function eliminarProductoDeCatalogo($id)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "DELETE FROM catalogo WHERE id_catalogo=$id;";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
           
            $db->cerrarConexion();
            
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }
}