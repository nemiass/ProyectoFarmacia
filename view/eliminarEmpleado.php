<?php

use app\controller\EmpleadoController;
use app\Empleado;


 $empleado=new EmpleadoController;
 $empleado->eliminarEmpleado($_GET['dni']);

header("location:index.php?p=adminEmpleados");

?>