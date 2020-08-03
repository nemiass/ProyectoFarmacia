<?php
namespace Clases;
use Clases\ConexionDB as Db;
include_once "../config/autoload.php";
class Empleado extends Usuario
{
    private $tipo;

    public function  __construct($nombres, $apellidos, $telefono, $dni, $user, $pass)
    {
        parent::__construct($nombres, $apellidos, $telefono, $dni, $user, $pass);
        $this->tipo = "empleado";
    }

    public function getTipo()
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT user_tipo from factura";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $tipo=$respuesta->fetchAll();
            $db->cerrarConexion();
            return $tipo;
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public  static function ListarEmpleado() :array {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from empleado";
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


    public function listarPedidos()
    {
        try {
            $db = new ConexionDB();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $pedido=$respuesta->fetchAll();
            $db->cerrarConexion();
            return $pedido;
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public function listarClientes()
    {
        try {
            $db = new ConexionDB();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from cliente";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $cliente=$respuesta->fetchAll();
            $db->cerrarConexion();
            return $cliente;
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public function hacerFactura(){
        // TODO
    }
}
