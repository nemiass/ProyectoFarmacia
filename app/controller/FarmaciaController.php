<?php

namespace app\controller;

use app\Farmacia;

class FarmaciaController
{
    public function addFarmacia(string $nom, string $ub, string $tel, string $corr): bool
    {
        $farmacia = new Farmacia($nom, $ub, $tel, $corr);
        $estado = $farmacia->registrarFarmacia();

        if ($estado != 0) {
            return true;
        }

        return false;
    }

    public function updFarmacia(string $nom, string $ub, string $tel, string $corr, int $id): bool
    {
        $farmacia = new Farmacia($nom, $ub, $tel, $corr);
        $estado = $farmacia->updateFarmacia($id);

        if ($estado != 0) {
            return true;
        }

        return false;
    }

    public function datosFarmacia()
    {
        $datos = Farmacia::traerDatosFarmacia();

        if (!empty($datos)) {
            return $datos;
        }
        return false;
    }
}
