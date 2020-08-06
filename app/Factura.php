<?php

namespace app;

use app\ConexionDB as db;

class Factura
{
    private $nombreFarmacia;
    private $precioUnitario;
    private $precioTotal;
    private $fecha;

    public function __construct($nombreFarmacia, $precioUnitario, $precioTotal, $fecha)
    {
        $this->nombreFarmacia = $nombreFarmacia;
        $this->precioUnitario = $precioUnitario;
        $this->precioTotal = $precioTotal;
        $this->fecha = $fecha;
    }

    public function getNombreFarmacia(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT nombre_farmacia from factura";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $farmacia = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $farmacia;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function setNombreFarmacia($nombreFarmacia, $id): void
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE factura
            SET nombre_farmacia =$nombreFarmacia;
            WHERE id_factura=$id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();

            $db->cerrarConexion();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function getPrecioUnitario()
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT precio_unitario from factura";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $unitario = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $unitario;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function setPrecioUnitario($precioUnitario): void
    {
        $this->precioUnitario = $precioUnitario;
    }

    public function getPrecioTotal()
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT precio_total from factura";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $total = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $total;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function setPrecioTotal($precioTotal): void
    {
        $this->precioTotal = $precioTotal;
    }

    public function getFecha()
    {
        return $this->fecha;
    }

    public function setFecha($fecha): void
    {
        $this->fecha = $fecha;
    }

    public function registrarFactura(): void
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO factura (id_factura,nombre_farmacia,precio_unitario,precio_total,fecha,id_pedido)
            VALUES ($this->nombreFarmacia,$this->precioUnitario,$this->precioTotal,$this->fecha)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();

            $db->cerrarConexion();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public  static function ListarFactura(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from factura";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
}
