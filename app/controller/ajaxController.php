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

    public function addProvincia()
    {
        if ($_POST["n"] != "" and $_POST["d"] != "") {
            $nombre = $_POST["n"];
            $id_departamento = $_POST["d"];
            Pedido::addProvincia($nombre, $id_departamento);
        }
    }

    public function getProvinciasHtml()
    {
        $provincias = Pedido::getProvincias();
        $cont = 0;
        foreach ($provincias as $p) {
            $cont += 1;
            $nombre = $p["nombre"];
            $id = $p["id_provincia"];
            echo "<tr>
                <td>$cont</td>
                <td>$nombre</td>
                <td><a name='eliminarp' class='btn btn-success' id='$id'>Eliminar</a></td>
            </tr>";
        }
    }

    public function getProvinciasxIdHtml()
    {
        if ($_GET["id"] != "") {
            $provincias = Pedido::getProvincias();
            echo "<option value=''>Provincias...</option>";
            foreach ($provincias as $p) {
                $nombre = $p["nombre"];
                $id = $p["id_provincia"];
                echo "<option value='$id'>$nombre</option>";
            }
            return;
        }
        echo "<option value=''>Provincia</option>";
    }

    public function getDistritosHtml()
    {
        if ($_GET["id"] != "") {
            $distritos = Pedido::getDistritos();
            $cont = 0;
            $dato = "";
            foreach ($distritos as $d) {
                $cont += 1;
                $nombre = $d["nombre"];
                $id = $d["id_distrito"];

                echo "<tr>
                <td>$cont</td>
                <td>$nombre</td>
                <td><a name='eliminard' class='btn btn-success eliminard' id='$id'>Eliminar</a></td>
            </tr>";
            }
        }
    }

    public function deleteDistrito()
    {
        if (isset($_GET["id"])) {
            $id_dist = $_GET["id"];
            if (Pedido::deleteDistrito($id_dist)) {
                echo "true";
                return;
            }
            echo "false";
        }
    }

    public function deleteProvincia()
    {
        if (isset($_GET["id"])) {
            $id_prov = $_GET["id"];
            if (Pedido::deleteProvincia($id_prov)) {
                echo "true";
                return;
            }
            echo "false";
        }
    }

    public function getAllProvincias()
    {
        $provincias = Pedido::getAllProvincias();
        if (!empty($provincias)) {
            return $provincias;
        }
        return "vacio";
    }

    public function addDistrito()
    {
        if ($_POST["disti"] != "" and $_POST["provi"] != "") {
            $nom = $_POST["disti"];
            $id_provincia = $_POST["provi"];
            if (Pedido::addDistrito($nom, $id_provincia)) {
                echo "true";
                return;
            }
            echo "false";
        }
        echo "heyy";
    }
}

if (isset($_GET["m"])) {
    $metodo = $_GET["m"];
    $ajax = new ajaxController;

    $ajax->{$metodo}();
}
