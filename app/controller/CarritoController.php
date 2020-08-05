<?php
namespace app\controller;
use app\Producto;
include "../../config/autoload.php";

//header("Access-Control-Allow-Origin: *");
//header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found"); 
// el javascript hace request a este archivo

// IMPLEMETANDO CARRITO EL AJAX DA ERROR PORQUE quiereo hacer un controller que devuelva datos
class CarritoController
{
    public function getProducto()
    {
        $id = 5;
        $producto = Producto::traerProducto($id);
        return $producto;
    }
   
}

$car = new CarritoController;
var_dump ($car->getProducto());

?>