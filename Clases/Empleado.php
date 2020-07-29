<?php
namespace Clases;
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
        return $this->tipo;
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
        catch (PDOException $e){
            echo $e->getMessage();
        }
        
        
    }


    public function listarPedidos()
    {
       // TODO
    }

    public function listarClientes()
    {
        // TODO
    }

    public function hacerFactura(){
        // TODO
    }
}
