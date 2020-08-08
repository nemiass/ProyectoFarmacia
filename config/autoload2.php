<?php
define('ROOT', dirname(__FILE__));
define('DS', DIRECTORY_SEPARATOR);
//mejorado
spl_autoload_register(function ($nombre_clase) {

    $ruta = ROOT . DS . "../" . str_replace("\\", DS, $nombre_clase) . '.php';
    if (!file_exists($ruta)) {
        throw new Exception("Error al cargar la clase -->" . $ruta);
    }
    include_once($ruta);
});
