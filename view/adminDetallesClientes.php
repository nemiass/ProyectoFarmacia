<!-- Header -->
<?php
include "layouts/headerAdmin.php";
?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- Main row -->
      <div class="row">
        <div class="col-9 mt-3">
          <h2>Cliente</h2>
        </div>
      </div>
      <div class="row">

        <div class="col-md-6">
          <div class="card card-secondary">
            <div class="card-header">
              <h3 class="card-title">Cliente</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>
            <div class="card-body">
              <?php

              use app\controller\AdminController;

              $admincontroller = new AdminController();
              $cliente = $admincontroller->listarCliente($_GET['id_cliente']);
              $pedidosRealizados = $admincontroller->listarPedidoRealizado($_GET['id_cliente']);

              $i = 1;
              $id_cliente = $_GET['id_cliente'];
              ?>

              <table class="table">
                <tbody>
                  <tr>
                    <th scope="row">Nombre:</th>
                    <td><?= $cliente[0]["nombre"] ?></td>
                  </tr>

                  <tr>
                    <th scope="row">Apellido:</th>
                    <td><?= $cliente[0]["apellido"] ?></td>
                  </tr>

                  <tr>
                    <th scope="row">Teléfono:</th>
                    <td><?= $cliente[0]["telefono"] ?></td>
                  </tr>

                  <tr>
                    <th scope="row">Dni:</th>
                    <td><?= $cliente[0]["dni"] ?></td>
                  </tr>

                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>



      </div>
      <div class="row">

        <div class="col-md-12">
          <div class="card card-secondary">

            <div class="card-header">
              <h3 class="card-title">Pedidos</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>

            <div class="card-body">

              <div>
                <div class="row">
                  <div class="col-6">
                    <h1>PedidosRealizados</h1>
                  </div>
                  <div class="col-6">
                    <div class="form-group">
                      <label>Agrupar por:</label>
                      <select class="custom-select">
                        <option>Todos</option>
                        <option>Ultimo año</option>
                        <option>Ultimo mes</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>

              <table class="table mt-4">

                <thead>
                  <tr>
                    <th>#</th>
                    <th>Fecha</th>
                    <th>Lugar Entrega</th>
                    <th>Empleado</th>
                    <th>Monto Total</th>
                    <th>&nbsp</th>
                  </tr>
                </thead>

                <tbody>
                  <?php foreach ($pedidosRealizados as $pedidoRealizado) : ?>
                    <tr>
                      <td><?= $i ?></td>
                      <td><?= $pedidoRealizado['fecha'] ?></td>
                      <td><?= $pedidoRealizado['direccion'] ?></td>
                      <td><?= $pedidoRealizado['empleado'] ?></td>
                      <td> <?= $pedidoRealizado['total'] ?></td>
                      <td>
                        <a href="adminDetallesPedidos.php?id_cliente=<?= $id_cliente ?>">
                          <button type="button" class="btn btn-block btn-success">Mostrar</button>
                        </a>
                      </td>
                    </tr>
                  <?php $i++;
                  endforeach; ?>

                </tbody>
              </table>

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