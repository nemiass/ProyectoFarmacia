<?php
    if(isset($_SESSION)){

        if($_SESSION["estado"] == "OK") {
            switch($_SESSION["tipo"]){
                case "cliente":
                    header("location: view/plantillaGeneral.php");
                break;

                case "empleado":
                    header("location: view/empleado.php");
                break;

                case "administrador":
                    header("location: view/admincuenta.php");
                break;

                default:
                    header("location: view/registrarse.php");
            break;

            }
        }
       
    }
    else{
        header("location: view/plantillaGeneral.php");
    }
?>