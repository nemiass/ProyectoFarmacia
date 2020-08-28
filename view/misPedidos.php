<!-- Header -->
<?php

use app\controller\PedidoController;
use app\controller\ClienteController;

$pcontroller = new PedidoController;
$ccontroller = new ClienteController;
$id_cliente = $ccontroller->traerCliente($_SESSION["dni"])["id_cliente"];
$pedidos = $pcontroller->pedidoxCliente($id_cliente);
$cont = 0;

$pcontroller->anularPedido();
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
              <h1>Mis Pedidos</h1>
            </div>
            <div class="row">
              <div class="col-12">
                <table class="table table-striped table-primary table-borderless">
                  <caption>Pedidos actuales</caption>
                  <thead class="thead thead-dark">
                    <tr>
                      <th>#</th>
                      <th>Fecha Entrega</th>
                      <th>Lugar de entrega</th>
                      <th>Moto a pagar</th>
                      <th>Estado</th>
                      <th>&nbsp</th>
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
                          <td><?= $p["estado"] ?></td>
                          <td>
                            <a href="index.php?p=misPedidos&idp=<?= $p["id_pedido"] ?>">
                              <button type="button" class="btn btn-block btn-danger">Anular pedido</button>
                            </a>
                          </td>
                          <td>
                            <a href="index.php?p=clienteDetallesPedidos&idp=<?= $p["id_pedido"] ?>"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                          </td>
                        </tr>
                      <?php endforeach; ?>
                    <?php else : ?>
                      <tr>
                        <td colspan="7">
                          <div class='alert alert-warning' role='alert'>Ningun pedido realizado</div>
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