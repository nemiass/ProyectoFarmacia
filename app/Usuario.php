<?php
namespace app;
use app\ConexionDB as db;

abstract class Usuario
{
    protected $nombres;
    protected $apellidos;
    protected $telefono;
    protected $dni;
    protected $user;
    protected $pass;
  
    public function __construct($nombres, $apellidos, $telefono, $dni, $user, $pass)
    {
        $this->nombres = $nombres;
        $this->apellidos = $apellidos;
        $this->telefono = $telefono;
        $this->dni = $dni;
        $this->user = $user;
        $this->pass = $pass;
    }

    public function getNombres(): string
    {
        return $this->nombres;
    }

    public function setNombres($nombres): void
    {
        $this->nombres = $nombres;
    }

    public function getApellidos(): string
    {
        return $this->apellidos;
    }

    public function setApellidos($apellidos): void
    {
        $this->apellidos = $apellidos;
    }

    public function getTelefono(): string
    {
        return $this->telefono;
    }

    public function setTelefono($telefono): void
    {
        $this->telefono = $telefono;
    }

    public function getUsert(): string
    {
        return $this->user;
    }

    public function setUser($user): void
    {
        $this->user = $user;
    }

    public function getPass(): string
    {
        return $this->pass;
    }

    public function setPass($pass): void
    {
        $this->pass = $pass;
    }

    public  static function listarUsuario() :array {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT es.id,es.nombres,es.apellidos,p.nombre from estudiantes as es join pa as p ON
            es.id_pa=p.id;";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz=$respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        }
        catch (\PDOException $e){
            echo $e->getMessage();
        }
    }

    public static function allUsuario()
    {

    }

    public static function traerUser($user):array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $query = "SELECT * FROM usuarios where usuario=?";
            $respuesta = $conn->prepare($query);
            $respuesta->execute([$user]);
            $usuario = $respuesta->fetchAll();
            $db->cerrarConexion();
                return $usuario;
        }

        catch (\PDOException $e){
            return $e->getMessage();
        }
    }
}