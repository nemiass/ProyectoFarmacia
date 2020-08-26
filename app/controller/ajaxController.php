<?php

namespace app\controller;

use app\Pedido;

require_once "../../config/autoload2.php";

header("Access-Control-Allow-Origin: *");

class ajaxController
{
    public function getProvincias()
    {
        $json = array();
        $provincias = Pedido::getProvincias();
        foreach ($provincias as $p) {
            $item = [
                "id_provincia" => $p["id_provincia"],
                "nombre" => $p["nombre"]
            ];
            array_push($json, $item);
        }
        echo json_encode([
            "provincias" => $json
        ]);
    }

    public function getDistritos()
    {
        $json = array();
        $distritos = Pedido::getDistritos();
        foreach ($distritos as $d) {
            $item = [
                "id_distrito" => $d["id_distrito"],
                "nombre" => $d["nombre"]
            ];
            array_push($json, $item);
        }
        echo json_encode([
            "distritos" => $json
        ]);
    }
}

if (isset($_GET["m"])) {
    $metodo = $_GET["m"];
    $ajax = new ajaxController;

    $ajax->{$metodo}();
}
