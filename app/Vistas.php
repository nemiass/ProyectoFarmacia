<?php

namespace app;

class Vistas
{
    public function traerVista($pagina, $tipo_usuario)
    {
        switch ($tipo_usuario) {
            case "general":
                return $this->traerVistaGeneral($pagina);
                break;
            case "administrador":
                return $this->traerVistaAdmin($pagina);
                break;
            case "empleado":
                return $this->traerVistaEmpleado($pagina);
                break;
            case "cliente":
                return $this->traerVistaCliente($pagina);
                break;
        }
    }

    public function traerVistaAdmin($pagina)
    {
        $lista_a = array(
            "adminCatalogo", "adminCatalogoProducto", "adminClientes",
            "admincuenta", "adminDetallesClientes", "adminDetallesEmpleados",
            "adminDetallesPedidos", "adminEmpleados", "adminPedidosAtendidos",
            "adminProductos", "imprimir", "logout", "agregarEmpleado","adminDetallesPedidosGeneral","adminDetallesPedidosEmpleado","eliminarEmpleado","eliminarCatalogo","eliminarProducto","editarCatalogo"
        );

        if (in_array($pagina, $lista_a)) {
            $vista = "view/" . $pagina . ".php";
        } else if ($pagina == "index") {
            $vista = "view/admincuenta.php";
        } else {
            $vista = "view/admincuenta.php";
        }
        return $vista;
    }

    public function traerVistaEmpleado($pagina)
    {
        $lista_e = array(
            "empleadoPedidosAtender", "empleadoPedidosAtendidos",
            "empleadoDetallesPedidos", "empleadoCuenta", "imprimir",
            "logout"
        );

        if (in_array($pagina, $lista_e)) {
            $vista = "view/" . $pagina . ".php";
        } else if ($pagina == "index") {
            $vista = "view/empleadoCuenta.php";
        } else {
            $vista = "view/empleadoCuenta.php";
        }
        return $vista;
    }

    public function traerVistaCliente($pagina)
    {
        $lista_c = array(
            "productos", "registrarse", "misPedidos", "login", "micuenta",
            "producto", "imprimir", "historialPedidos", "carrito", "detallesPedidos",
            "imprimir", "logout"
        );

        if (in_array($pagina, $lista_c)) {
            $vista = "view/" . $pagina . ".php";
        } else if ($pagina == "index") {
            $vista = "view/productos.php";
        } else {
            $vista = "view/login.php";
        }
        return $vista;
    }

    public function traerVistaGeneral($pagina)
    {
        $lista_c = array(
            "productos", "registrarse", "login", "producto", "carrito"
        );

        if (in_array($pagina, $lista_c)) {
            $vista = "view/" . $pagina . ".php";
        } else if ($pagina == "index") {
            $vista = "view/productos.php";
        } else {
            $vista = "view/login.php";
        }
        return $vista;
    }
}
