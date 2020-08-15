<!-- Header -->
<?php

use app\controller\ClienteController;
use app\controller\EmpleadoController;
use app\controller\PedidoController;

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
          <h2>Empleado</h2>
        </div>

        <div class="col-3 mt-3">
          <button type="button" class="btn btn-block btn-danger">Dar de baja</button>
        </div>
      </div>
      <div class="row">

        <div class="col-md-6">
          <div class="card card-secondary">
            <div class="card-header">
              <h3 class="card-title">Empleado</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>
            <div class="card-body">

              <table class="table">
                <tbody>
                <?php
                $i=1;
              $empleadocontroller = new EmpleadoController;
              $pedidocontroller=new PedidoController();
             $cliente=new ClienteController;
             
              $empleado = $empleadocontroller->traerempleado($_GET['id_empleado']);
              $pedidos=$pedidocontroller->listarPedidosAtendidosempleado($_GET['id_empleado']);
              
              ?>
              
                  <tr>
                    <th scope="row">Nombre:</th>
                    <td><?= $empleado[0]['nombre'] ?></td>
                  </tr>

                  <tr>
                    <th scope="row">Apellido:</th>
                    <td><?= $empleado[0]['apellido'] ?></td>
                  </tr>

                  <tr>
                    <th scope="row">Teléfono:</th>
                    <td><?= $empleado[0]['telefono'] ?></td>
                  </tr>

                  <tr>
                    <th scope="row">Dni:</th>
                    <td><?= $empleado[0]['dni'] ?></td>
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
              <h3 class="card-title">Pedidos atendidos</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>

            <div class="card-body">
              <div>
                <div class="row">
                  <div class="col-6">
                    <h1>PedidosAtendidos</h1>
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
                    <th>Cliente</th>
                    <th>Monto Total</th>
                    <th>&nbsp</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
            foreach($pedidos as $ped):
                  ?>
                  <tr>
                    <td><?=$i; $i++; ?></td>
                    <td><?=$ped['fecha'] ?></td>
                    <td><?=$ped['direccion'] ?></td>
                    <td><?=$ped['cliente'] ?></td>
                    <td>S/. <?=$ped['total'] ?></td>
                    <td>
                      <a href="index.php?p=adminDetallesPedidosEmpleado&id_pedido=<?= $ped['5']?>&id_cliente=<?=$ped['0'] ?>">
                        <button type="button" class="btn btn-block btn-success">Mostrar</button>
                      </a>
                    </td>
                  </tr>

                  <?php
           endforeach;
           ?>
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