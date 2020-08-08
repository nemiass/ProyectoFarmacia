<?php

namespace app\controller;

use app\Cliente;
use app\Producto;

class ClienteController
{

    public function editardatos()
    {
    }

    public function agregarPedido()
    {
    }

    public function cancelarPedido()
    {
    }

    public function listarproductosxCliente(int $id)
    {
        $productos = Cliente::ListarProductosxCliente($id);
        return $productos;
    }
}
