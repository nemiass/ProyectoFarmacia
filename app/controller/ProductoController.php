<?php

namespace app\controller;

use app\Producto;


class ProductoController
{
   public function listarProductos()
   {
      $productos = Producto::ListarProductos();

      if (!empty($productos)) {
         return $productos;
      } else {
         return false;
      }
   }

   public function traerProducto($id)
   {
      $producto = Producto::traerProducto($id);
      if (!empty($producto)) {
         return $producto;
      } else {
         return false;
      }
   }
}
