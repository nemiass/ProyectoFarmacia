<?php

namespace app\controller;

use app\Producto;

include "../../config/autoload2.php";

// el ajax hace request a este archivo
class CarritoController
{
    public function recibirPeticion()
    {
        session_start();
        $tipo = $_GET["tipo"];

        switch ($tipo) {
            case "agregar":
                $this->getProducto();
                break;
            case "eliminar":
                $this->eliminarProducto();
                break;
            default:
                echo "error 404";
                exit();
                break;
        }
    }

    public function getProducto()
    {
        $id = $_GET["id"];
        $cantidad = $_GET["cantidad"];

        if (isset($_SESSION["Productos"][$id])) {
            $_SESSION["Productos"][$id]["cantidad"] = $cantidad;
            $_SESSION["Productos"][$id]["subtotal"] = $cantidad * $_SESSION["Productos"][$id]["precio"];
        } else {

            $producto = Producto::traerProducto($id);

            foreach ($producto as $p) {
                $item = [
                    "id" => $p["id_producto"],
                    "nombre" => $p["nombre"],
                    "precio" => $p["precio"],
                    "caracteristicas" => $p["caracteristicas"],
                    "cantidad" => $cantidad
                ];
            }
            $_SESSION["Productos"][$id] = $item;
            $_SESSION["Productos"][$id]["subtotal"] = $cantidad * $_SESSION["Productos"][$id]["precio"];
        }
        $cantidad = count($_SESSION["Productos"]);
        $_SESSION["cantidad"] = $cantidad;
        $_SESSION["total"] = $this->sacarTotal($_SESSION["Productos"]);
        echo $cantidad;
    }

    public function eliminarProducto()
    {
        $id = $_GET["id"];
        $_SESSION["total"] = $_SESSION["total"] - $_SESSION["Productos"][$id]["subtotal"];
        unset($_SESSION["Productos"][$id]);
        $cantidad = count($_SESSION["Productos"]);
        $_SESSION["cantidad"] = $cantidad;
        echo $cantidad;
    }

    public function sacarTotal($prod)
    {
        $total = 0;
        foreach ($prod as $p) {
            $total += $p["subtotal"];
        }
        return $total;
    }
}
$conCarrito = new CarritoController();
$conCarrito->recibirPeticion();

//session_destroy();
//unset($_SESSION["Productos"]);
