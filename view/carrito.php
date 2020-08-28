<!-- Header -->
<?php

use app\controller\ClienteController;
use app\controller\PedidoController;
use app\Producto;

$ccontroller = new ClienteController;
$pcontroller = new PedidoController;

if (isset($_POST['enviar'])) {
  if (isset($_SESSION["estado"])) {
    if (!empty($_SESSION["Productos"])) {
      // valida si los campos del hacer pedido estan vacíos
      if (PedidoController::Validar()) {
        $id_dep = $_POST["dep"];
        $id_prov = $_POST["prov"];
        $id_dist = $_POST["dist"];

        $cliente = $ccontroller->traerCliente($_SESSION['dni']);
        $id_cliente = $cliente['id_cliente'];

        $dep = $pcontroller->traerDepartamento($id_dep)["nombre"];
        $prov = $pcontroller->traerProvincia($id_prov)["nombre"];
        $dist = $pcontroller->traerDistrito($id_dist)["nombre"];
        $pedido = $pcontroller->registrarPedido($id_cliente, $dep, $prov, $dist, $_SESSION["total"]);
        $id_pedido = $pedido[0]['id_pedido'];

        $productoss = $_SESSION["Productos"];

        foreach ($productoss as $p) {
          $id = $p["id"];
          $nombre = $p["nombre"];
          $precio = $p["precio"];
          $cantidad = $p["cantidad"];
          $subtotal = $p["subtotal"];
          $pcontroller->registrarPedidoProducto($cantidad, $id, $id_pedido, $id);
        }
        $dato = "pedido registrado correctamente";
        unset($_SESSION["Productos"]);
        $_SESSION["cantidad"] = 0;
        $_SESSION["total"] = 0;
      }
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

    <div class="row">
      <div class="col-12">
        <div class="card card-solid">
          <div class="card-body">
            <div class="row">
              <div class="col-10">
                <h1></h1>
              </div>
            </div>

            <div class="row">
              <div class="col-12">
                <table class="table table-striped" id="lista-pedidos">
                  <caption>Mi carrito</caption>
                  <thead class="thead-dark">
                    <tr>
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
                      <tr>
                        <td colspan="5">
                          <div class='alert alert-warning' role='alert'>Tu carrito está vacío!</div>
                        </td>
                      </tr>
                    <?php endif; ?>
                  </tbody>
                </table>

              </div>
            </div>
            <!-- /.card-body -->
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-12">
        <div class="card card-solid">
          <div class="card-body">

            <?php
            $departamentos = $pcontroller->traerDepartamentos();
            ?>
            <div>
              <h2 class="text-center">Realize su pedido</h2>
            </div>
            <?php if (isset($dato)) : ?>
              <div class='alert alert-success' role='alert'><?= $dato ?></div>
            <?php endif; ?>

            <form role="form" method="POST">
              <div class="row">
                <div class="col-4">
                  <select name="dep" id="dep" class="form-control mb-1">
                    <option value="">Seleccione Departamento</option>

                    <?php foreach ($departamentos as $p) : ?>
                      <option value=<?= $p['id_departamento'] ?>><?= $p['nombre'] ?></option>
                    <?php endforeach; ?>

                  </select>
                </div>
                <div class="col-4">
                  <select name="prov" id="prov" class="form-control mb-1">
                    <option value="">Seleccione Provincia</option>
                  </select>
                </div>
                <div class="col-4">
                  <select name="dist" id="dist" class="form-control mb-1">
                    <option value="">Seleccione distrito</option>
                  </select>
                </div>
              </div>

              <label for="exampleInputEmail1">Direccion de entrega</label>
              <input type="texto" class="form-control" id="exampleInputEmail1" name="direccion">
              <label for="exampleInputEmail1">Fecha de entrega </label>
              <input type="date" placeholder="dd-mm-yyyy" class="form-control" id="exampleInputEmail1" name="fecha">
              <br><br>
              <button type="submit" class="btn btn-block btn-primary btn-lg" name="enviar">Realizar Pedido</button>
              <div class="row">
              </div>
            </form>
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