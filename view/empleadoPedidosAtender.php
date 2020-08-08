<!-- Header -->
<?php
include "layouts/headerEmpleado.php";
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
                        <button type="button" class="btn btn-block btn-success">Actualizas lista</button>
                    </div>

                </div>
                <div class="row">
                    <div class="col-12">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Nro. de Pedido</th>
                                    <th>Fecha Entrega</th>
                                    <th>Lugar de entrega</th>
                                    <th>Cliente</th>
                                    <th>Moto</th>
                                    <th>Tipo</th>
                                    <th>&nbsp</th>
                                    <th>&nbsp</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>12-12-2020</td>
                                    <td>Mi casa</td>
                                    <td>Papo</td>
                                    <td>S/100.00</td>
                                    <td>Pagado</td>
                                    <td>
                                        <button type="button" class="btn btn-block btn-warning">Atender</button>
                                    </td>

                                    <td>
                                        <a href="empleadoDetallesPedidos.php"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                                    </td>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td>12-12-2020</td>
                                    <td>Mi casa</td>
                                    <td>Papo</td>
                                    <td>S/100.00</td>
                                    <td>Cobrar</td>
                                    <td>
                                        <button type="button" class="btn btn-block btn-warning">Atender</button>
                                    </td>

                                    <td>
                                        <a href="empleadoDetallesPedidos.php"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                                    </td>
                                </tr>

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