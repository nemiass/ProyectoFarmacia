<?php
namespace Clases;
use Clases\ConexionDB as Db;
include_once "../config/autoload.php";
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

    public  static function ListarClientes() :array {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT * from cliente";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz=$respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        }
        catch (\PDOException $e){
            echo $e->getMessage();
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