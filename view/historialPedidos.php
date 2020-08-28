<!-- Header -->
<?php

use app\controller\PedidoController;
use app\controller\ClienteController;
use app\controller\AdminController;

$pcontroller = new PedidoController;
$ccontroller = new ClienteController;
$acontroller = new AdminController;
$id_cliente = $ccontroller->traerCliente($_SESSION["dni"])["id_cliente"];
$pedidos = $pcontroller->pedidoEntregado($id_cliente);
$cont = 0;
include "layouts/headerCliente.php";
?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="card card-solid mt-3">
          <div class="card-body">
            <div class="row">
              <div class="col-6">
                <h1>Historial de pedidos</h1>
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
                <table class="table table-striped table-success table-borderless">
                  <caption>Pedidos entregados</caption>
                  <thead class="thead thead-dark">
                    <tr>
                      <th>#</th>
                      <th>FechaEntregada</th>
                      <th>Lugar Etregado</th>
                      <th>Moto pagado</th>
                      <th>&nbsp</th>
                    </tr>
                  </thead>

                  <tbody>
                    <?php if (!empty($pedidos)) :
                      foreach ($pedidos as $p) :
                        $cont += 1;
                    ?>
                        <tr>
                          <td><?= $cont ?></td>
                          <td><?= $p["fecha_entrega"] ?></td>
                          <td><?= $p["direccion"] ?></td>
                          <td>S/ <?= number_format($p["monto"], 2, ".", ",") ?></td>
                          <td>
                            <a href="index.php?p=detallesPedidos"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                          </td>
                        </tr>
                      <?php endforeach; ?>
                    <?php else : ?>
                      <tr>
                        <td colspan="7">
                          <div class='alert alert-warning' role='alert'>Ningun pedido entregado</div>
                        </td>
                      </tr>
                    <?php endif; ?>

                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <!-- /.card-body -->
        </div>
      </div>
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