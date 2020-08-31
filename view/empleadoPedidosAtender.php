<!-- Header -->
<?php

use app\controller\EmpleadoController;
use app\controller\PedidoController;

include "layouts/headerEmpleado.php";
$econtroller = new EmpleadoController;

$dni_empleado = $_SESSION['dni'];
$empleado = $econtroller->traerempleado($dni_empleado);
$id_empleado = $empleado[0]['id_empleado'];
$pcontroller = new PedidoController;
$pcontroller->registrarEmpleado_pedido();
$pedidos = $pcontroller->listarpedidosaAtender();
//$id_empleado=$empleado['id_empleado'];
$i = 1;
?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">

        <div class="card card-solid">
            <div class="card-body">
                <div class="row">
                    <div class="col-9">
                        <h1>Pedidos a atender</h1>

                    </div>
                    <div class="col-3">
                        <a href="index.php?p=empleadoPedidosAtender">
                            <button type="button" class="btn btn-block btn-success">Actualizas lista</button></a>
                    </div>

                </div>
                <div class="row">
                    <div class="col-12">
                        <table class="table table-striped">
                            <thead class="thead thead-dark">
                                <tr>
                                    <th>#</th>
                                    <th>Fecha Entrega</th>
                                    <th>Distrito</th>
                                    <th>Lugar de entrega</th>
                                    <th>Cliente</th>
                                    <th>subtotal</th>
                                    <th>total</th>
                                    <th>&nbsp</th>
                                    <th>&nbsp</th>
                                    <th>&nbsp</th>
                                </tr>
                            </thead>

                            <tbody>

                                <?php foreach ($pedidos as $ped) : ?>
                                    <form action="" method="post">
                                        <tr>
                                            <td><?= $i;
                                                $i++ ?></td>
                                            <td><?= $ped['fecha_entrega'] ?></td>
                                            <td><?= $ped['distrito'] ?></td>
                                            <td><?= $ped['direccion'] ?></td>
                                            <td><?= $ped['nombre'] ?></td>
                                            <td>S/<?= $ped['monto'] ?></td>
                                            <td>S/<?= ($ped['monto'] + 8) ?></td>

                                            <td>

                                                <input type="hidden" name="id_empleado" value="<?= $empleado[0]['id_empleado'] ?>">
                                                <input type="hidden" name="id_pedido" value="<?= $ped['id_pedido'] ?>">
                                                <button type="submit" value='enviar' name="enviar" class="btn btn-block btn-warning">Atender</button>

                                            </td>
                                            <td>
                                                <a href="index.php?p=empleadoCancelar&id_pedido=<?= $ped['id_pedido'] ?>&id_cliente=<?= $ped['id_cliente'] ?>"><button type="button" class="btn btn-block btn-danger">Cancelar</button></a>
                                            </td>
                                            <td>
                                                <a href="index.php?p=empleadoDetallesPedidos&id_pedido=<?= $ped['id_pedido'] ?>&id_cliente=<?= $ped['id_cliente'] ?>"><button type="button" class="btn btn-block btn-success">Detalles</button></a>
                                            </td>
                                        </tr>
                                    </form>
                                <?php endforeach; ?>

                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
            <!-- /.card-body -->
        </div>

    </section>
    <!-- /.content -->

</div>
<!-- /.content-wrapper -->

<!-- Footer -->
<?php
include "layouts/footer.php";
?>
<!--/. Footer -->