<?php
namespace Clases;

use Clases\ConexionDB as db;

class Producto
{
    private $nombre;
    private $precio;
    private $caracteristicas;
    private $proveeedor;

    public function __construct($nombre, $precio, $caracteristicas, $proveeedor)
    {
        $this->nombre = $nombre;
        $this->precio = $precio;
        $this->caracteristicas = $caracteristicas;
        $this->proveeedor = $proveeedor;
    }

    public function getNombre()
    {
        return $this->nombre;
    }

    public function setNombre($nombre): void
    {
        $this->nombre = $nombre;
    }

    public function registrarProducto(){
        // TODO
    }

    public function listarProductos(){

    }

    public function actualizarProductos(){
        
    }
}