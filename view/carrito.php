<!-- Header -->
<?php

use app\controller\ClienteController;
use app\controller\PedidoController;

if (isset($_POST['enviar'])) {
  if (isset($_SESSION["estado"])) {
    $ccontroller = new ClienteController;
    $pcontroller = new PedidoController;

    $cliente = $ccontroller->traerCliente($_SESSION['dni']);
    $id_cliente = $cliente['id_cliente'];
    $pedido = $pcontroller->registrarPedido($id_cliente);
    $productoss = $_SESSION["Productos"];
    $id_pedido = $pedido[0]['id_pedido'];

    foreach ($productoss as $p) {
      $id = $p["id"];
      $nombre = $p["nombre"];
      $precio = $p["precio"];
      $cantidad = $p["cantidad"];
      $subtotal = $p["subtotal"];
      $pcontroller->registrarPedidoProducto($cantidad, $id, $id_pedido, $id);
    }
  } else {
    $dato = "Registrese para poder realizar su pedido correctamente!!";
  }
}


include "layouts/headerCliente.php";
?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Main content -->
  <section class="content">

    <div class="card card-solid">
      <div class="card-body">
        <div class="row">
          <div class="col-10">
            <h1></h1>
          </div>
          <!--<div class="col-2 mt-3">
                      <?php
                      /**if (isset($_SESSION["total"])) {
                        echo "<div><b>Tola: </b>" . $_SESSION["total"] . "</div>";
                      } else {
                        echo "<div><b>Tola: </b>0</div>";
                      }**/
                      ?>
                </div>-->
        </div>


        <div class="row">
          <div class="col-12">

            <table class="table table-striped" id="lista-pedidos">
              <thead>
                <tr>
                  <?php if (isset($dato)) : ?>
                    <div class='alert alert-warning' role='alert'><?= $dato ?></div>
                  <?php endif; ?>
                  <th>Producto</th>
                  <th>Precio</th>
                  <th>Cantidad</th>
                  <th>Sub Total</th>
                  <th>&nbsp</th>
                </tr>
              </thead>

              <tbody>
                <?php
                if (!empty($_SESSION["Productos"])) :
                  $productoss = $_SESSION["Productos"];
                  foreach ($productoss as $p) :
                    $id = $p["id"];
                    $nombre = $p["nombre"];
                    $precio = $p["precio"];
                    $cantidad = $p["cantidad"];
                    $subtotal = $p["subtotal"];

                ?>
                    <tr id="<?= $id ?>A">
                      <td><?= $nombre ?></td>
                      <td>S/<?= number_format($precio, 2, ".", ",") ?></td>
                      <td><input class='text-center' id="<?= $id ?>" disabled style='width:17%;' type="text" value="<?= $cantidad ?>"></td>
                      <td>S/<?= number_format($subtotal, 2, ".", ",") ?></td>
                      <td>
                        <button value="eliminar" type="button" class="btn btn-block btn-danger" name="eliminar" onclick="eliminar(<?= $id ?>, this.value)">Eliminar</button>
                      </td>
                    </tr>
                  <?php
                  endforeach;
                else : ?>
                  <div class='alert alert-warning' role='alert'>Tu carrito está vacío!</div>
                <?php endif; ?>

              </tbody>
            </table>

          </div>
        </div>
        <form role="form" method="POST">
          <label for="exampleInputEmail1">direccion de entrega</label>
          <input type="texto" class="form-control" id="exampleInputEmail1" name="direccion">
          <label for="exampleInputEmail1">Fecha de entrega </label>
          <input type="date" placeholder="dd-mm-yyyy" class="form-control" id="exampleInputEmail1" name="fecha">
          <br><br>
          <button type="submit" class="btn btn-block btn-primary btn-lg" name="enviar">Realizar Pedido</button>
          <div class="row">
          </div>

      </div>
      </form>
      <!-- /.card-body -->

  </section>
  <!-- /.content -->

</div>
<!-- /.content-wrapper -->

<!-- Footer -->
<?php
include "layouts/footer.php";
?>
<!--/. Footer -->