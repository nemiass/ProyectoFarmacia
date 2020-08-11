<?php

require_once "config/autoload2.php";

use app\Administrador;
use app\Cliente;
use app\Usuario;

use function PHPSTORM_META\registerArgumentsSet;

function Registrar()
{
    $admin = new Administrador("Admin", "admin", "12345678", "12345678");
    $admin->registrarAdministrador();
    $password = password_hash("admin", PASSWORD_BCRYPT);
    $user = new Usuario("admin", $password);
    $user->setDni("12345678");
    $user->setTipo("administrador");
    $user->RegistrarCuenta();
}

registrar();
