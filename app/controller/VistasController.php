<?php

namespace app\controller;

use app\Vistas;

class VistasController
{
    public function plantillaGeneral()
    {
        include "view/plantilla.php";
    }

    public function solicitarVista($tipo_usuario = "cliente")
    {
        if (isset($_GET["p"])) {
            $pagina = $_GET["p"];
        } else {
            $pagina = "index";
        }

        $mvista = new Vistas();
        $repuesta = $mvista->traerVista($pagina, $tipo_usuario);
        include $repuesta;
    }
}
