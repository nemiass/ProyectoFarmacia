<?php
namespace app\controller;
use app\Cliente;
use app\Producto;

class ClienteController
{   

    function editardatos(){

    }
    
    function agregarProductoCarrito(){
        
    }
    
    function eliminarProductoCarrito(){
        
    }
    
    function agregarPedido(){
        
    }
    
    function eliminarPedido(){
        
    }

    function listarCliente($id){
        $cliente=Cliente::ListarCliente($id);
        return $cliente;

    }

    function listarproductosxCliente($id){
        $productos=Cliente::ListarProductosxCliente($id);
        return $productos;

    }

}

?>