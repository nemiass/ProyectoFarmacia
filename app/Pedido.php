<?php

namespace app;

use app\ConexionDB as db;

class Pedido
{
    private $fecha;
    private $fecha_entrega;
    private $fechaEntrega;
    private $direccion;
    private $dep;
    private $prov;
    private $dist;
    private $monto;
    private $id_cliente;

    public function __construct($fecha, $fecha_entrega, $direccion, $id_cliente, $dep, $prov, $dist, $monto)
    {
        $this->fecha = $fecha;
        $this->fecha_entrega = $fecha_entrega;
        $this->direccion = $direccion;
        $this->id_cliente = $id_cliente;
        $this->dep = $dep;
        $this->prov = $prov;
        $this->dist = $dist;
        $this->monto = $monto;
    }

    public function registrarPedido(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "INSERT INTO pedido(fecha,fecha_entrega,departamento, provincia, distrito, direccion,estado, monto, id_cliente)
            VALUES('$this->fecha_entrega','$this->fecha','$this->dep','$this->prov','$this->dist','$this->direccion', 'pendiente','$this->monto',$this->id_cliente)";

            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $sql = "SELECT * FROM pedido ORDER by id_pedido DESC LIMIT 1";
            $respuesta1 = $conn->prepare($sql);
            $respuesta1->execute();
            $pedido = $respuesta1->fetchAll();
            $db->cerrarConexion();
            return $pedido;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function getCantidad(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT cantidad from pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $cantidad = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $cantidad;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function setCantidad($cantidad): void
    {
        $this->cantidad = $cantidad;
    }

    public function getFecha()
    {
        return $this->fecha;
    }

    public function setFecha($fecha): void
    {
        $this->fecha = $fecha;
    }

    public function getFechaEntrega()
    {
        return $this->fechaEntrega;
    }


    public function setFechaEntrega($fechaEntrega): void
    {
        $this->fechaEntrega = $fechaEntrega;
    }

    public  static function ListarPedidosAtendidos(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT cli.id_cliente,fecha_entrega,direccion,SUM(cantidad*precio) as total,CONCAT( emp.nombre,' ',emp.apellido ) as empleado,CONCAT( cli.nombre,' ',cli.apellido ) as cliente,ped.id_pedido FROM pedido as ped JOIN pedido_producto as ped_pro on ped.id_pedido=ped_pro.id_pedido JOIN producto as pro on pro.id_producto=ped_pro.id_producto JOIN empleado_pedido as emp_ped on emp_ped.id_pedido=ped.id_pedido JOIN empleado as emp on emp.id_empleado=emp_ped.id_empleado JOIN cliente as cli on cli.id_cliente=ped.id_cliente GROUP BY ped.id_pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function PedidoaAtender(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT cli.id_cliente as id_cliente,ped.id_pedido as id_pedido,fecha_entrega,direccion,cli.nombre,SUM(precio*cantidad) as monto,estado, distrito FROM pedido as ped JOIN cliente as cli on cli.id_cliente=ped.id_cliente JOIN pedido_producto as ped_pro on ped_pro.id_pedido=ped.id_pedido JOIN producto as pro on pro.id_producto=ped_pro.id_producto WHERE ped.estado='pendiente' GROUP BY ped.id_pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $pedidos = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $pedidos;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function detallesaAtender($id_cliente, $id_pedido): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT prod.nombre,cantidad,precio,sum(prod.precio*ped_prod.cantidad) as subtotal, departamento, provincia, distrito, direccion from cliente as cli join pedido as ped ON cli.id_cliente=ped.id_cliente JOIN pedido_producto as ped_prod on ped_prod.id_pedido=ped.id_pedido JOIN producto as prod on prod.id_producto=ped_prod.id_producto WHERE cli.id_cliente=$id_cliente AND ped.id_pedido=$id_pedido GROUP BY prod.id_producto";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $pedidos = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $pedidos;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function pedidos_atendido($id_empleado): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT ped.id_pedido,cli.id_cliente,fecha_entrega,direccion,sum(prod.precio*ped_prod.cantidad) as subtotal,cli.nombre from cliente as cli join pedido as ped ON cli.id_cliente=ped.id_cliente JOIN pedido_producto as ped_prod on ped_prod.id_pedido=ped.id_pedido JOIN producto as prod on prod.id_producto=ped_prod.id_producto JOIN empleado_pedido as emp_ped on emp_ped.id_pedido=ped.id_pedido join empleado as emp on emp.id_empleado=emp_ped.id_empleado WHERE emp.dni=$id_empleado and ped.estado='entregado' GROUP BY ped.id_pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $pedidos = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $pedidos;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }


    public static function PedidoRealizado($id): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT ped.id_pedido,ped.fecha,ped.direccion,CONCAT( emp.nombre,' ',emp.apellido )as empleado,sum(prod.precio*ped_prod.cantidad) as total from cliente as cli join pedido as ped ON cli.id_cliente=ped.id_cliente JOIN empleado_pedido as emp_ped ON emp_ped.id_pedido=ped.id_pedido JOIN empleado as emp ON emp.id_empleado=emp_ped.id_empleado JOIN pedido_producto as ped_prod on ped_prod.id_pedido=ped.id_pedido JOIN producto as prod  on prod.id_producto=ped_prod.id_producto WHERE cli.id_cliente=$id  GROUP BY ped.id_pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }


    public static function subtotal($id, $id2): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT ped.id_pedido,ped.fecha,sum(prod.precio*ped_prod.cantidad) as total from cliente as cli join pedido as ped ON cli.id_cliente=ped.id_cliente JOIN empleado_pedido as emp_ped ON emp_ped.id_pedido=ped.id_pedido JOIN empleado as emp ON emp.id_empleado=emp_ped.id_empleado JOIN pedido_producto as ped_prod on ped_prod.id_pedido=ped.id_pedido JOIN producto as prod  on prod.id_producto=ped_prod.id_producto WHERE cli.id_cliente=$id AND ped.id_pedido=$id2   GROUP BY ped.id_pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function PedidoRealizadoEmpleado($id): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "SELECT cli.id_cliente,ped.fecha,ped.direccion,CONCAT( cli.nombre,' ',cli.apellido )as cliente,sum(prod.precio*ped_prod.cantidad) as total,ped.id_pedido from cliente as cli join pedido as ped ON cli.id_cliente=ped.id_cliente JOIN empleado_pedido as emp_ped ON emp_ped.id_pedido=ped.id_pedido JOIN empleado as emp ON emp.id_empleado=emp_ped.id_empleado JOIN pedido_producto as ped_prod on ped_prod.id_pedido=ped.id_pedido JOIN producto as prod  on prod.id_producto=ped_prod.id_producto  WHERE emp.id_empleado=$id and ped.estado='entregado'   GROUP BY ped.id_pedido";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $matriz = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $matriz;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function actualizarEstado($id_pedido)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();

            $sql = "UPDATE pedido
        SET estado = 'entregado'
        WHERE id_pedido=$id_pedido ";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $db->cerrarConexion();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function getDepartamentos(): array
    {
        // Departamentos, metodo que ejecuta el controller ajax
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "SELECT * from departamentos";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $dep = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $dep;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function addDepartamento($nombre)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "INSERT INTO departamentos(nombre) VALUES(:n)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([":n" => $nombre]);
            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function deleteDepartamento($id_departamento)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "DELETE from departamentos WHERE id_departamento=:id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([":id" => $id_departamento]);
            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function deleteDistrito($id_distrito)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "DELETE from distritos WHERE id_distrito=:id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([":id" => $id_distrito]);
            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
    public static function deleteProvincia($id_provincia)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "DELETE from provincias WHERE id_provincia=:id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([":id" => $id_provincia]);
            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function addProvincia($nombre, $id_departamento)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "INSERT INTO provincias(nombre, id_departamento) VALUES(:n, :idd)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                ":n" => $nombre,
                ":idd" => $id_departamento
            ]);
            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function getProvincias(): array
    {
        // provincias, metodo que ejecuta el controller ajax
        $id = $_GET["id"];
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "SELECT * from provincias where id_departamento = :id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([":id" => $id]);
            $prov = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $prov;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function getAllProvincias(): array
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "SELECT * from provincias";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute();
            $prov = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $prov;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function getDistritos(): array
    {
        // distritos, metodo que ejecuta el controller ajax
        $id = $_GET["id"];
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "SELECT * from distritos where id_provincia = :id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([":id" => $id]);
            $prov = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $prov;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function addDistrito($nombre, $id_provincia)
    {
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "INSERT INTO distritos(nombre, id_provincia) VALUES(:n, :idp)";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                ":n" => $nombre,
                ":idp" => $id_provincia
            ]);
            $db->cerrarConexion();
            return $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function getDepartamento($id)
    {
        // trae un departamento por su id
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "SELECT nombre from departamentos where id_departamento = :id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([":id" => $id]);
            $prov = $respuesta->fetch();
            $db->cerrarConexion();
            return $prov;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function getProvincia($id)
    {
        // traer provincia or su id
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "SELECT nombre from provincias where id_provincia = :id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([":id" => $id]);
            $prov = $respuesta->fetch();
            $db->cerrarConexion();
            return $prov;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function getDistrito($id)
    {
        // trae un distrito por su id
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "SELECT nombre from distritos where id_distrito = :id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([":id" => $id]);
            $prov = $respuesta->fetch();
            $db->cerrarConexion();
            return $prov;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function getPedidoxCliente($id_cliente)
    {
        // traer de la base de datos los pedidos pendientes del cliente
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "SELECT * FROM pedido where id_cliente = :id and estado != :p";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                ":id" => $id_cliente,
                ":p" => "entregado"
            ]);
            $prov = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $prov;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function getPedidoEntregado($id_cliente)
    {
        // traer de la base de datos los pedidos entregados de un cliente
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "SELECT * FROM pedido where id_cliente = :id and estado = :p";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                ":id" => $id_cliente,
                ":p" => "entregado"
            ]);
            $prov = $respuesta->fetchAll();
            $db->cerrarConexion();
            return $prov;
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function cancelarPedido($id_pedido, $msg)
    {
        // metodo que ejecuta el empledo pra cancelar un pedido, debido a factores x
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "UPDATE pedido SET estado=:e, mensaje=:msg 
            WHERE id_pedido=:id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                ":msg" => $msg,
                ":e" => "cancelado!",
                ":id" => $id_pedido
            ]);
            $db->cerrarConexion();
            return $res = $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }

    public static function anularPedido($id_pedido)
    {
        //metodo que ejecuta el cliente para anular su pedido
        try {
            $db = new db();
            $conn = $db->abrirConexion();
            $sql = "DELETE FROM pedido WHERE id_pedido = :id";
            $respuesta = $conn->prepare($sql);
            $respuesta->execute([
                ":id" => $id_pedido
            ]);
            $db->cerrarConexion();
            return $res = $respuesta->rowCount();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
}
