<?php

namespace app;

class Vistas
{
    public function traerVista($pagina, $tipo_usuario)
    {
        switch ($tipo_usuario) {
            case "administrador":
                return $this->traerVistaAdmin($pagina);
                break;
            case "empleado":
                return $this->traerVistaEmpleado($pagina);
                break;
            case "cliente":
                return $this->traerVistaCliente($pagina);
        }
    }

    public function traerVistaAdmin($pagina)
    {
        $lista_a = array(
            "adminCatalogo", "adminCatalogoProducto", "adminClientes",
            "admincuenta", "adminDetallesClientes", "adminDetallesEmpleados",
            "adminDetallesPedidos", "adminEmpleados", "adminPedidosAtendidos",
            "adminProductos"
        );

        if (in_array($pagina, $lista_a)) {
            $vista = "view/" . $pagina . ".php";
        } else if ($pagina == "productos") {
            $vista = "view/productos.php";
        } else {
            $vista = "view/admincuenta.php";
        }
        return $vista;
    }

    public function traerVistaEmpleado($pagina)
    {
        $lista_e = array(
            "empleadoPedidosAtender", "empleadoPedidosAtendidos",
            "empleadoDetallesPedidos", "empleadoCuenta"
        );

        if (in_array($pagina, $lista_e)) {
            $vista = "view/" . $pagina . ".php";
        } else if ($pagina == "productos") {
            $vista = "view/productos.php";
        } else {
            $vista = "view/empleadoCuenta.php";
        }
        return $vista;
    }

    public function traerVistaCliente($pagina)
    {
        $lista_c = array(
            "productos", "registrarse", "misPedidos", "login", "micuenta",
            "producto", "imprimir", "historialPedidos", "carrito", "detallesPedidos"
        );

        if (in_array($pagina, $lista_c)) {
            $vista = "view/" . $pagina . ".php";
        } else if ($pagina == "productos") {
            $vista = "view/productos.php";
        } else {
            $vista = "view/login.php";
        }
        return $vista;
    }
}
