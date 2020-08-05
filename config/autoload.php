<?php

// Estoy tratando de impñementar el autoloader que cargue todo loq ue le metas
// no hay en youtube

// Pero funciona cuando instanciando el controller en la vista, jala todo, da error
// cuando ejecutas el controller en el mismo controller
spl_autoload_register(function ($nombre_clase) {
    if(strpos($nombre_clase, "app\\controller\\$nombre_clase") == 0){
        //echo "Ruta antes: ".$nombre_clase."<br/>";
        $ruta = str_replace("\\", "/", $nombre_clase);
        //echo "Ruta despues: ".$ruta."<br/>";
        //echo "Ruta: ".$ruta."<br/>";
        include "../".$ruta . '.php';
    }
   /* else{
        echo "Ruta antes else: ".$nombre_clase."<br/>";
        echo "Esto se esta ejecutando";
        $ruta = str_replace("app\\", "", $nombre_clase);
        include "../".$ruta . '.php';
    }*/
    
});
?>