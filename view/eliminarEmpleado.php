<?php

use app\controller\EmpleadoController;
use app\Empleado;


 $empleado=new EmpleadoController;
 $empleado->eliminarEmpleado($_GET['id']);

header("location:index.php?p=adminEmpleados");

?>