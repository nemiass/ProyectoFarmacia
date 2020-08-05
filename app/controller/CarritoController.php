<?php
namespace app\controller;

use app\Carrito;
use app\Producto;
include "../../config/autoload2.php";

// el javascript hace request a este archivo
class CarritoController
{
    public function recibirPeticion(){
        session_start();
        $tipo = $_GET["tipo"];

        switch($tipo){
            case "agregar":
                $this->getProducto();
            break;
            case "eliminar":
                $this->eliminarProducto();
            break;
            default:
            return false;
        break;
        }
    }

    public function getProducto()
    {
        
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
        echo $cantidad;
    }

    public function eliminarProducto(){
        $id = $_GET["id"];
        if(isset($_SESSION["Productos"])){
            unset($_SESSION["Productos"][$id]);
            $cantidad = count($_SESSION["Productos"]);
            $_SESSION["cantidad"] = $cantidad;

            echo $cantidad;
        }
    }
}
$conCarrito = new CarritoController();
$conCarrito->recibirPeticion();

//session_destroy();
//unset($_SESSION["Productos"]);
?>