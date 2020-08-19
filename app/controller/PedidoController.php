<?php

namespace app\controller;

use app\Pedido;
use app\Pedido_producto;

class PedidoController
{

    function agregarPedido()
    {
    }

    function eliminarPedido()
    {
    }

    function registrarPedido($id_cliente){
     
        if(isset($_POST['enviar'])){
               $fecha=$_POST['fecha'];
               $fecha_entrega=date("Y-m-d");
               $direccion=$_POST['direccion'];
               $id_cliente=$id_cliente;
            $pedido=new Pedido($fecha,$fecha_entrega,$direccion,$id_cliente);
            $ped=$pedido->registrarPedido();
           return $ped;
         
        }
      
    }

    function registrarPedidoProducto($cantidad,$id_prod,$id_pedido,$id_producto){
        if(isset($_POST['enviar'])){
            $ped_pro=new Pedido_producto($cantidad,$id_prod,$id_pedido,$id_producto);
            $ped_pro->registrarPedido_producto();
          
        }
    }
    function listarPedidosAtendidos()
    {
        $pedido=Pedido::ListarPedidosAtendidos();
        return $pedido;
    }

    function nuevoPedido(){
        $_SESSION["Productos"]=null;
       
    }

    function listarPedidosAtendidosempleado($id)
    {
        $pedido=Pedido::PedidoRealizadoEmpleado($id);
        return $pedido;
    }

}
