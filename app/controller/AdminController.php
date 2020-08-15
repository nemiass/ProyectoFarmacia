<?php

namespace app\controller;

use app\Empleado;
use app\Catalogo;
use app\Administrador;
use app\Cliente;
use app\Producto;
use app\Pedido;
use app\Usuario;

class AdminController
{
  public function getAdmin($dni)
  {
    $admin = Administrador::getAdministrador($dni);

    if (!empty($admin)) {
      return $admin;
    }
    echo "error dni";
  }

  public function actualizarDatos(string $nombres, string $apellidos, string $telefono, string $dni)
  {
    $admin = new Administrador($nombres, $apellidos, $telefono, $dni);
    if ($admin->actualizarAdministrador() != 0) {
      return true;
    }
    return false;
  }

  public function actualizarCuenta(string $usuario, string $contraseña, int $id)
  {
    $usuario = new Usuario($usuario, $contraseña);
    if ($usuario->actualizarCuenta($id) != 0) {
      return true;
    }
    return false;
  }

  // Manejo de empleados
  public function registrarEmpleado(string $nombre, string $apellido, string $dni, string $telefono)
  {
    $empleado = new Empleado($nombre, $apellido, $dni, $telefono);
    if ($empleado->registrarEmpleado() != 0) {
      return true;
    }
    return false;
  }


  public function EliminarEmpleado(int $id_emp)
  {
    if (Empleado::eliminarEmpleado($id_emp) != 0) {
      return true;
    }
    return false;
  }

  public function listarEmpleado(): array
  {
    $empleados = Empleado::ListarEmpleado();
    return $empleados;
  }

  //Manejo de productos
  public function addProducto(string $nombre, float $precio, string $caracteristicas, string $img, int $id_catalogo)
  {
    $producto = new Producto($nombre, $precio, $caracteristicas, $img, $id_catalogo);
    $estado = Administrador::crearProducto($producto);
    if ($estado != 0) {
      echo "Producto Registrado";
      return;
    }
    echo "no se registro correctamente";
  }

  public function updProducto(string $nombre, float $precio, string $caracteristicas, string $img, int $id_catalogo)
  {
    $producto = new Producto($nombre, $precio, $caracteristicas, $img, $id_catalogo);
    $estado = Administrador::actualizarProducto($producto);
    if ($estado != 0) {
      echo "Producto actualiado";
      return;
    }
    echo "no se registro correctamente";
  }

  public function eliminarProducto()
  {
    // TODO -->On delete cascade problemas
  }

  // manejo de catalogos
  public function agregarCatalogo(string $nombre, string $descripcion)
  {
    $catalogo = new Catalogo($nombre, $descripcion);
    if ($catalogo->crearCatalogo()) {
      return true;
    }
    return false;
  }

  public function actualizarCatalogo(string $nombre, string $descripcion)
  {
    $catalogo = new Catalogo($nombre, $descripcion);
    if ($catalogo->actualizarCatalogo()) {
      return true;
    }
    return false;
  }
  //Al eliminar el catalogo se eliminan tambien todos los productos relacionados a ella
  public function  eliminarCatalogo(int $id)
  {
    if (Catalogo::BorrarCatalogo($id) != 0) {
      return true;
    }
    return false;
  }

  public function listarCatalogos()
  {
    $catalogos = Catalogo::ListarCatalogo();
    if (!empty($catalogos)) {
      return $catalogos;
    }
    return false;
  }

  public function quitarProductoDeCatalogo(int $id_prod)
  {
    $catalogos = Catalogo::quitarProductoDeCatalogo($id_prod);
    if ($catalogos != 0) {
      return true;
    }
    return false;
  }
  //manejo de Pedidos
  public function listarPedidos()
  {
    //TODO
  }

  // Bill clientes

  public function listarClientes(): array
  {
    $clientes = Cliente::ListarClientes();
    return $clientes;
  }

  public function listarCliente($id): array
  {
    $clientes = Cliente::ListarCliente($id);
    return $clientes;
  }

  public function listarPedidoRealizado($id): array
  {
    $pedidosRealizados = Pedido::PedidoRealizado($id);
    return $pedidosRealizados;
  }

  public function monto($id,$id2): array
  {
    $pedidosRealizados = Pedido::subtotal($id,$id2);
    return $pedidosRealizados;
  }

}
