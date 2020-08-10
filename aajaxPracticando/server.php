<?php

function getProductos()
{
    $dsn = "mysql:host=localhost;dbname=farmacia";
    $user = "root";
    $password = "";
    $conn = new  PDO($dsn, $user, $password);
    $sql = "SELECT * FROM producto";
    $respuesta = $conn->prepare($sql);
    $respuesta->execute();
    $productos = $respuesta->fetchAll();
    $conn = null;
    return $productos;
}
$productos = getProductos();

$jason_productos = array();

foreach ($productos as $p) {
    $datos[] = array(
        "id" => $p["id_producto"],
        "nombre" => $p["nombre"],
        "precio" => $p["precio"],
        "descripcion" => $p["caracteristicas"]
    );
}
$suma = $_GET["a"] + $_GET["b"];
$jason_productos["datos"] = $datos;
$jason_productos["suma"] = $suma;

echo json_encode($jason_productos);
