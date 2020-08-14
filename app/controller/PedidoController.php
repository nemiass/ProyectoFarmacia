<?php

namespace app\controller;

use app\Pedido;

class PedidoController
{

    function agregarPedido()
    {
    }

    function eliminarPedido()
    {
    }

    function listarPedidosAtendidos()
    {
        $pedido=Pedido::ListarPedidosAtendidos();
        return $pedido;
    }



}
