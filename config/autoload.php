<?php
spl_autoload_register(function ($nombre_clase) {
    $ruta = str_replace("\\", "/", $nombre_clase);
    //echo $ruta."<br/>";
    include $ruta . '.php';
    include_once "ConexionDB.php";
});