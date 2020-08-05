<?php
namespace app\controller;
use app\Empleado;
use app\Catalogo;
use app\Administrador;
use app\Producto;
use app\Pedido;

class AdminController
{
   public function getAdmin($dni):array{
     $admin=Administrador::getAdministrador($dni);
     return $admin;
   }
   public function listarEmpleado() :array{
       $empleados=Empleado::ListarEmpleado();
       return $empleados;
   }

   public function editardatos(){
    
   }
  
   public function agregarEmpleado(){
   
   }
      
   public function  eliminarEmpleado(){
   
       
   }

   public function agregarCatalogo(){
   
   }
       
   public function  eliminarCatalogo(){
   
   }
   
   public function agregarProducto(){
   
   }
       
   public function listarPedidos(){
       
   }
}
?>