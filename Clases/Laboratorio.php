<?php
namespace Clases;
class Laboratorio
{
    private $nombre;
    private $direccion;

    public function __construct($nombre, $direccion)
    {
        $this->nombre = $nombre;
        $this->direccion = $direccion;
    }

    public function getDescriptcion()
    {
        return "{$this->nombre}, {$this->direccion}";
    }
}