<?php
namespace Clases;
include_once "../config/autoload.php";

session_start();
$user=$_POST['usuario'];
$pass=$_POST['password'];
$s= Producto::ListarProductos();
echo $s[0]['nombre'];
?>