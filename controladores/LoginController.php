<?php
namespace Clases;
include_once "../config/autoload.php";

session_start();
$user=$_POST['usuario'];
$pass=$_POST['password'];
$a = new Producto("anfetaminas", 12.00, "bueno, barato","Umbrella");

?>