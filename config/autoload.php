<?php
spl_autoload_register(function ($nombre_clase) {
    $ruta = str_replace("\\", "/", $nombre_clase);
    include "../".$ruta . '.php';
});
?>