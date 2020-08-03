<?php
namespace Clases;
include_once "../config/autoload.php";
use Clases\ConexionDB as Db;

class Factura
{
    private $nombreFarmacia;
    private $precioUnitario;
    private $precioTotal;
    private $fecha;

    public function __construct($nombreFarmacia, $precioUnitario, $precioTotal, $fecha)
    {
        $this->nombreFarmacia = $nombreFarmacia;
        $this->precioUnitario = $precioUnitario;
        $this->precioTotal = $precioTotal;
        $this->fecha = $fecha;
    }

    public function getNombreFarmacia()
    {
        return $this->nombreFarmacia;
    }

    public function setNombreFarmacia($nombreFarmacia): void
    {
        $this->nombreFarmacia = $nombreFarmacia;
    }

    public function getPrecioUnitario()
    {
        return $this->precioUnitario;
    }

    public function setPrecioUnitario($precioUnitario): void
    {
        $this->precioUnitario = $precioUnitario;
    }

    public function getPrecioTotal()
    {
        return $this->precioTotal;
    }

    public function setPrecioTotal($precioTotal): void
    {
        $this->precioTotal = $precioTotal;
    }

    public function getFecha()
    {
        return $this->fecha;
    }

    public function setFecha($fecha): void
    {
        $this->fecha = $fecha;
    }

    public function registrarFactura(){
        // TODO
    }

    public  static function ListarFactura() :array {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from factura";
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
}