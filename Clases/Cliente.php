<?php
namespace Clases;

use Clases\ConexionDB as db;

require_once "config/autoload.php";

class Cliente
{
    private $nombre;
    private $apellido;
    private $dni;

    public function getNombre():string
    {
        return $this->nombre;
    }

    public function setNombre($nombre): void
    {
        $this->nombre = $nombre;
    }

    public function setApellido($apellido): void
    {
        $this->apellido = $apellido;
    }

    public function getApellido():int
    {
        return $this->apellido;
    }

    public function setDni($dni): void
    {
        $this->dni = $dni;
    }

    public function getDni():int
    {
        return $this->dni;
    }

    public function registrarse()
    {
        // TODO
    }

    public function crearPedido()
    {
        // TODO
    }

    public function eliminarPedido()
    {
        // TODO
    }

    public function agregarAlCarrito()
    {
        // TODO
    }

    public function EliminarDelCarrito()
    {
        // TODO
    }
}