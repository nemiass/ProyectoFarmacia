<?php
namespace Clases;

use Clases\ConexionDB as db;

class Catalogo
{
    private $tipo;

    public function __construct($tipo)
    {
        $this->tipo = $tipo;
    }

    public function getTipo()
    {
        return $this->tipo;
    }
    public function setTipo($tipo)
    {
        return $this->tipo = $tipo;
    }

    public function registrarCatalogo()
    {
        // TODO
    }

    public function agregarProducto()
    {
        // TODO
    }

    public function listarProductos()
    {
        // TODO
    }

    public function eliminarProductoDeCatalogo()
    {
        // TODO
    }
}