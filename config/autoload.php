<?php
spl_autoload_register(function ($nombre_clase) {
    if (strpos($nombre_clase, "app\\controller\\$nombre_clase") == 0) {

        $ruta = str_replace("\\", "/", $nombre_clase);
        include "../" . $ruta . '.php';
    }
});
