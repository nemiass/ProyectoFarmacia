<?php
namespace app;

use app\ConexionDB as db;


class Empleado_pedido{

    
    private $id_empleado;
    private $id_pedido;
  


    public function __construct($id_empleado, $id_pedido)
    {
             $this->id_empleado = $id_empleado;
              $this->id_pedido=$id_pedido;
     
    }


    public function registrarEmpleado_pedido()
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO  empleado_pedido (id_empleado,id_pedido)
            VALUES($this->id_empleado,$this->id_pedido)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $db->cerrarConexion();
          
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }















}
