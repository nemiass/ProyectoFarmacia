<?php
namespace Clases;
include_once "../config/autoload.php";
use Clases\ConexionDB as db;

class Pedido
{
    private $cantidad;
    private $fecha;
    private $fechaEntrega;

    public function __construct($cantidad, $fecha, $fechaEntrega)
    {
        $this->cantidad = $cantidad;
        $this->fecha = $fecha;
        $this->fechaEntrega = $fechaEntrega;
    }

    public function getCantidad()
    {
        return $this->cantidad;
    }

    public function setCantidad($cantidad): void
    {
        $this->cantidad = $cantidad;
    }

    public function getFecha()
    {
        return $this->fecha;
    }

    public function setFecha($fecha): void
    {
        $this->fecha = $fecha;
    }

    public function getFechaEntrega()
    {
        return $this->fechaEntrega;
    }


    public function setFechaEntrega($fechaEntrega): void
    {
        $this->fechaEntrega = $fechaEntrega;
    }

    public  static function ListarPedidos() :array {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from pedido";
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

    public function registrarPedido(){
        // TODO
    }
}