<!-- Header -->
<?php

include "layouts/headerCliente.php";

?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Main content -->
  <section class="content">

    <div class="row">
      <div class="col-6">
        <div class="card card-solid mt-4">
          <div class="card-body">
            <table class="table table-striped table-primary table-borderless" id="lista-pedidos">
              <caption>Productos del Pedido</caption>
              <thead class="thead-dark">
                <tr>
                  <th>Nombre</th>
                  <th>Precio</th>
                  <th>Cantidad</th>
                  <th>Sub Total</th>
                </tr>
              </thead>
              <tbody>
                <?php

                use app\controller\ProductoController;

                $pcontroller = new ProductoController;

                $productos = $pcontroller->getProdutoxPedido($_GET["idp"]);

                foreach ($productos as $p) :
                  $nombre = $p["nombre"];
                  $precio = $p["precio"];
                  $cantidad = $p["cantidad"];
                  $subtotal = $p["subtotal"];
                ?>
                  <tr>
                    <td><?= $nombre ?></td>
                    <td>S/<?= number_format($precio, 2, ".", ",") ?></td>
                    <td><?= $cantidad ?></td>
                    <td>S/<?= number_format($subtotal, 2, ".", ",") ?></td>
                  </tr>
                <?php
                endforeach ?>
              </tbody>
            </table>

          </div>
        </div>
        <!-- /.card-body -->
      </div>

      <div class="col-6">
        <div class="card card-solid mt-4">
          <div class="card-body">
            <?php if ($productos[0]["mensaje"]) : ?>
              <div class="alert alert-danger" role="alert">
                <h4 class="alert-heading">Pedido cancelado!!</h4>
                <p>Pedido cancelado por el sigueinte motivo:</p>
                <p><?= $productos[0]["mensaje"] ?></p>
                <hr>
                <p class="mb-0">Farmavida</p>
                <p>Teléfono: 554-112-556 </br>Correo: farmavida@farmavida.com</p>
              </div>
            <?php else : ?>
              <div class="alert alert-success" role="alert">
                <h4 class="alert-heading">Mensaje!!</h4>
                <p>Tu pedido esta siendo procesado...
                  si sucede algun imprevisto con lo mostraremos aquí.
                </p>
                <hr>
                <p class="mb-0">Farmavida</p>
              </div>
            <?php endif; ?>
          </div>
        </div>
        <!-- /.card-body -->
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