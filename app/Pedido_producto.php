<?php
namespace app;

use app\ConexionDB as db;


class Pedido_producto{

    private $cantidad;
    private $id_prod;
    private $id_pedido;
    private $id_producto;


    public function __construct($cantidad, $id_prod, $id_pedido,$id_producto)
    {
        $this->cantidad = $cantidad;
        $this->id_prod = $id_prod;
        $this->id_pedido=$id_pedido;
        $this->id_producto=$id_producto;
    }


    public function registrarPedido_producto()
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO  pedido_producto(cantidad,id_prod,id_pedido,id_producto)
            VALUES($this->cantidad ,$this->id_prod,$this->id_pedido,$this->id_producto)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $db->cerrarConexion();
          
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }















}

















?>