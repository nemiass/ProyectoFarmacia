<?php
    if(isset($_SESSION)){
        // TODO:   si tiene un session ya guardada, entonces lo redirigirá a la pagina
        // aue corresponda sea admin, o empleado     
    }
    else{
        header("location: view/plantillaGeneral.php");
    }
?>