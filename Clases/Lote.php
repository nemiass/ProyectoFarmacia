<?php
namespace Clases;
class Lote
{
    private $nombre;
    private $tipo;
    private $precio;
    private $descripcion;

    public function __construct($nombre, $tipo, $precio, $descripcion)
    {
        $this->nombre = $nombre;
        $this->tipo = $tipo;
        $this->precio = $precio;
        $this->descripcion = $descripcion;
    }

    public function getDescriptcion()
    {
        return "{$this->nombre}, {$this->tipo}, {$this->precio}, {$this->descripcion}";
    }
}