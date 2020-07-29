<?php

use Clases\Producto;

include_once "../config/autoload.php";
session_start();
$user=$_POST['user'];
$pass=$_POST['pass'];
 $s= Producto::ListarProductos();
echo $s[0]['nombre'];

?>