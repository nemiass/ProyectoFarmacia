<!-- Header -->
<?php

use app\controller\PedidoController;

$pcontroller = new PedidoController;
$pedidos = $pcontroller->detallesaAtender($_GET['id_cliente'], $_GET['id_pedido']);
$id_pedido = $_GET["id_pedido"];
$res = $pcontroller->cancelarPedido($id_pedido);

include "layouts/headerEmpleado.php";
?>
<!--/. Header -->
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <!-- Main row -->
            <div class="row">
                <div class="col-md-8 mt-3 offset-md-2">
                    <h2 class="text-center">Detalles del Pedido a cancelar</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="card card-danger">
                        <div class="card-header">
                            <h3 class="card-title">Cancelar el pedido</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                            </div>
                        </div>
                        <div class="card-body">
                            <?php if (isset($res)) : ?>
                                <div class="alert alert-warning"><?= $res ?></div>
                            <?php endif; ?>
                            <table class="table table-striped">
                                <thead class="thead thead-dark">
                                    <tr>
                                        <th>#</th>
                                        <th>Productos</th>
                                        <th>cantidad</th>
                                        <th>precio</th>
                                    </tr>
                                    <?php foreach ($pedidos as $ped) : ?>
                                        <tr>
                                            <td>1</td>
                                            <td><?= $ped['nombre'] ?></td>
                                            <td><?= $ped['cantidad'] ?></td>
                                            <td><?= $ped['precio'] ?></td>

                                        </tr>
                                    <?php endforeach; ?>
                                </thead>
                            </table>

                            <table class="table mt-4">
                                <thead class="thead thead-dark">
                                    <tr>
                                        <th>Departamento</th>
                                        <th>Provincia</th>
                                        <th>Distrito</th>
                                        <th>Lugar exacto</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><?= $ped["departamento"] ?></td>
                                        <td><?= $ped["provincia"] ?></td>
                                        <td><?= $ped["distrito"] ?></td>
                                        <td><?= $ped["direccion"] ?></td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="card mt-2">
                                <form method="post">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text bg-danger">Motivo de la cancelación</span>
                                        </div>
                                        <textarea class="form-control" aria-label="With textarea" name="msg"></textarea>
                                    </div>
                                    <div class="form-group mt-2 col-md-4 offset-md-4">
                                        <input type="submit" name="send" id="" class="form-control btn btn-danger" value="Cofirmar cancelación">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </div>
        <!-- /.row (main row) -->
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->

</div>
<!-- /.content-wrapper -->

<!-- Footer -->
<?php
include "layouts/footer.php";
?>
<!--/. Footer -->