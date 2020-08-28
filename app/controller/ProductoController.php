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

   public function agregarProductos()
   {
      if (isset($_POST['reg'])) {
         if (!empty($_FILES['foto']['name'])) {
            $imagen = $_FILES['foto']['name'];
            $ruta = $_FILES['foto']['tmp_name'];
            $destino = "public/img/" . $imagen;
            copy($ruta, $destino);
            $nombre = $_POST['nombre'];
            $precio = $_POST['precio'];
            $caracteristicas = $_POST['caracteristicas'];
            $img = $destino;
            $id_catalogo = $_POST['id_catalogo'];
            $producto = new Producto($nombre, $precio, $caracteristicas, $img, $id_catalogo);
            $producto->registrarProducto();
            header("location: index.php?p=adminProductos");
         } else {
            header("location: index.php?p=agregarProducto&e=agregar imagen");
         }
      }
   }

   public function ActualizarProducto()
   {
      if (isset($_POST['enviar'])) {
         if (!empty($_FILES['foto']['name'])) {
            $nom = $_POST['nombre'];
            $des = $_POST['caracteristicas'];
            $pre = $_POST['precio'];
            $id = $_POST['id'];
            $imagen = $_FILES['foto']['name'];
            $ruta = $_FILES['foto']['tmp_name'];
            $destino = "public/img/" . $imagen;
            copy($ruta, $destino);
            $img = $destino;
            Producto::actualizarProductos($id, $nom, $pre, $des, $img);
            header("location: index.php?p=adminProductos");
         } else {
            $nom = $_POST['nombre'];
            $des = $_POST['caracteristicas'];
            $pre = $_POST['precio'];
            $id = $_POST['id'];

            Producto::actualizarProductosSinImg($id, $nom, $pre, $des);
            header("location: index.php?p=adminProductos");
         }
      }
   }

   public function traerProducto(int $id)
   {
      $producto = Producto::traerProducto($id);
      if (!empty($producto)) {
         return $producto;
      } else {
         return false;
      }
   }

   public function getProdutoxPedido($id_pedido)
   {
      $productos = Producto::getProductosxPedido($id_pedido);
      if (!empty($productos)) {
         return $productos;
      } else {
         return false;
      }
   }
}
