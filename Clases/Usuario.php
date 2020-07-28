<?php
namespace Clases;

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
}