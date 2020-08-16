<?php

namespace app\controller;

use app\Empleado;
use app\Pedido;
use app\Usuario;

class EmpleadoController
{
    public function RegistrarEmpleado()
    {
        if (isset($_POST["reg"])) {
            $c = array(
                "dni" => $_POST["dni"],
                "nom" => $_POST["nombre"],
                "ape" => $_POST["apellido"],
                "tel" => $_POST["telefono"],
                "usr" => $_POST["usuario"],
                "pass" => $_POST["contraseña"]
            );

            $errores = $this->Validar($c);

            if ($errores == "0") {
                $empleado = new Empleado($c["nom"], $c["ape"], $c["dni"], $c["tel"]);
                $empleado->registrarEmpleado();
                $password = password_hash($c["pass"], PASSWORD_BCRYPT);
                $user = new Usuario($c["usr"], $password);
                $user->setDni($c["dni"]);
                $user->setTipo("empleado");
                $user->RegistrarCuenta();
                header("location: index.php?p=adminEmpleados");
            } else {
                header("location: index.php?p=agregarEmpleado&e=$errores");
            }
        }
    }

    public static function Validar($datos)
    {
        $errores = "";
        if (Usuario::traerUser($datos["usr"])) {
            return $errores = "usuario ya esxite";
        }
        foreach ($datos as $dato) {
            if (!(preg_match('/^[a-zA-Z0-9]+$/', $dato))) {
                return $errores = "rellenes los espacios correctamente";
            }
        }
        if (strlen($datos["pass"]) > 8) {
            return $errores = "contraseña maximo 8 caracteres";
        }
        return $errores = "0";
    }

    public function traerempleado($id){
      $empleado=Empleado::traerEmpleado($id);
      return $empleado;
    }

    public function listarpedidosxempleado($id,$id2){
        $empleado=Empleado::ListarProductosxEmpleado($id,$id2);
        return $empleado;
      }

      public function subtotal($id,$id2){
        $empleado=Empleado::subtotal($id,$id2);
        return $empleado;
      }

      public function eliminarEmpleado($id){
        $empleado=Empleado::eliminarEmpleado($id);
        return $empleado;
      }
}
