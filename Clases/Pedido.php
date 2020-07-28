<?php
namespace Clases;

use Clases\ConexionDB as db;

class Pedido
{
    private $cantidad;
    private $fecha;
    private $fechaEntrega;

    public function __construct($cantidad, $fecha, $fechaEntrega)
    {
        $this->cantidad = $cantidad;
        $this->fecha = $fecha;
        $this->fechaEntrega = $fechaEntrega;
    }

    public function getCantidad()
    {
        return $this->cantidad;
    }

    public function setCantidad($cantidad): void
    {
        $this->cantidad = $cantidad;
    }

    public function getFecha()
    {
        return $this->fecha;
    }

    public function setFecha($fecha): void
    {
        $this->fecha = $fecha;
    }

    public function getFechaEntrega()
    {
        return $this->fechaEntrega;
    }

    public function setFechaEntrega($fechaEntrega): void
    {
        $this->fechaEntrega = $fechaEntrega;
    }

    public function registrarPedido(){
        // TODO
    }
}