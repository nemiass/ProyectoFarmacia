<?php
namespace Clases;
use Clases\ConexionDB as Db;
include_once "../config/autoload.php";
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
        // TODO
    }

    public function agregarProducto()
    {
        // TODO
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

    public function eliminarProductoDeCatalogo()
    {
        // TODO
    }
}