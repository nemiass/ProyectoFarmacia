<?php
namespace Clases;

use Clases\ConexionDB as db;

require_once "config/autoload.php";


class Jefe extends Usuario
{
    private $tipo;

    public function  __construct($nombres, $apellidos, $telefono, $dni, $user, $pass)
    {
        parent::__construct($nombres, $apellidos, $telefono, $dni, $user, $pass);
        $this->tipo = "administrador";
    }

    public function getTipo()
    {
        return $this->tipo;
    }

    public function crearProducto()
    {
       // TODO
    }

    public function crearCatalogo()
    {
       // TODO
    }

    public function crearFactura()
    {
       // TODO
    }

    public function editarFactura()
    {
       // TODO
    }

    public function eliminarProducto()
    {
        // TODO
    }

    public function listarFacturas(){
        // TODO
    }
}