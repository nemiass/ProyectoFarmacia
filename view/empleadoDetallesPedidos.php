<!-- Header -->
<?php

use app\controller\ClienteController;
use app\controller\PedidoController;

$pcontroller = new PedidoController;
$pedidos = $pcontroller->detallesaAtender($_GET['id_cliente'], $_GET['id_pedido']);
$ccontroller = new ClienteController;
$cliente = $ccontroller->traerCliente2($_GET['id_cliente']);
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
        <div class="col-9 mt-3">
          <h2>Detalles del Pedido</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="card card-success">
            <div class="card-header">
              <h3 class="card-title">Pedido</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>
            <div class="card-body">
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
                <thead class="thead">
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
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>

        <div class="col-md-6">
          <div class="card card-success">
            <div class="card-header">
              <h3 class="card-title">Cliente</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>
            <div class="card-body">
              <table class="table">
                <tbody>
                  <tr>
                    <th scope="row">Nombre</th>
                    <td><?= $cliente[0]['nombre'] ?></td>
                  </tr>
                  <tr>
                    <th scope="row">Apellidos:</th>
                    <td><?= $cliente[0]['apellido'] ?></td>
                  </tr>

                  <tr>
                    <th scope="row">Teléfono:</th>
                    <td><?= $cliente[0]['telefono'] ?></td>
                  </tr>

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