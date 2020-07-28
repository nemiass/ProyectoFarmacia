<?php
namespace Clases;

use Clases\ConexionDB as db;

require_once "config/autoload.php";


class Empleado extends Usuario
{
    private $tipo;

    public function  __construct($nombres, $apellidos, $telefono, $dni, $user, $pass)
    {
        parent::__construct($nombres, $apellidos, $telefono, $dni, $user, $pass);
        $this->tipo = "empleado";
    }

    public function getTipo()
    {
        return $this->tipo;
    }

    public function listarPedidos()
    {
       // TODO
    }

    public function listarClientes()
    {
        // TODO
    }

    public function hacerFactura(){
        // TODO
    }

}