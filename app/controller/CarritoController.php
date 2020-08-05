<?php
namespace app\controller;
use app\Producto;
include "../../config/autoload2.php";

// el javascript hace request a este archivo
class CarritoController
{
    public function getProducto()
    {
        session_start();
        $id = $_GET["id"];
        $cantidad = $_GET["cantidad"];
        
        if(isset($_SESSION["Productos"][$id])) {
                $_SESSION["Productos"][$id]["cantidad"] = $cantidad;
        }
        else{
            $producto = Producto::traerProducto($id);

            foreach($producto as $p){
                $item = [
                    "id" => $p["id_producto"],
                    "nombre" => $p["nombre"],
                    "precio" => $p["precio"],
                    "caracteristicas" => $p["caracteristicas"],
                    "cantidad" => $cantidad
                    ];
                }
                $_SESSION["Productos"][$id] = $item;
        }
        $cantidad = count($_SESSION["Productos"]);
        $_SESSION["cantidad"] = $cantidad;
        return $cantidad;
    }
}
$pcont = new CarritoController();
$cant = $pcont->getProducto();
echo $cant;
//session_destroy();
//unset($_SESSION["Productos"]);
?>