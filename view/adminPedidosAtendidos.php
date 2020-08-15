<!-- Header -->
<?php
include "layouts/headerAdmin.php";
?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Main content -->
  <section class="content">

    <div class="card card-solid">
      <div class="card-body">
        <div class="row">
          <div class="col-6">
            <h1>Pedidos Atendidos</h1>
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
        <div class="row">
          <div class="col-12">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Nro</th>
                  <th>FechaEntregada</th>
                  <th>Lugar Etregado</th>
                  <th>Monto pagado</th>
                  <th>Empleado</th>
                  <th>Cliente</th>
                  <th>&nbsp</th>
                </tr>
              </thead>

              <tbody>
              <?php

use app\controller\PedidoController;


                    $admincontroller = new PedidoController();
                    $pedido = $admincontroller->listarPedidosAtendidos();
   

                     $i = 1;
   
    ?>
    <?php foreach($pedido as $ped): ?>
                <tr>
                  <td><?= $i; $i++ ?></td>
                  <td><?= $ped['fecha_entrega'] ?></td>
                  <td><?= $ped['direccion'] ?></td>
                  <td>S/.<?= $ped['total'] ?></td>
                  <td><?= $ped['empleado'] ?></td>
                  <td><?= $ped['cliente'] ?></td>
                  <td>
                    <a href="index.php?p=adminDetallesPedidosGeneral&id_cliente=<?= $ped['0']?>&id_pedido=<?=$ped['6'] ?>"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                  </td>
                </tr>

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