<?php
namespace Clases;
class Proveedor
{
    private $nombre;
    private $direccion;

    public function __construct($nombre, $direccion)
    {
        $this->nombre = $nombre;
        $this->direccion = $direccion;
    }

    public static function getDescriptcion()
    {
        try {
            $db = new ConexionDB();
            $conn = $db->abrirConexion();

            $sql = "SELECT proveedor from producto";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $descripcion=$respuesta->fetchAll();
            $db->cerrarConexion();
            return $descripcion;
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

}