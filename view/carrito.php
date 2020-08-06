<!-- Header -->
<?php
//session_start();
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
            <h1>Productos del carrito</h1>
          </div>
          <!--<div class="col-2 mt-3">
                      <?php
                      if (isset($_SESSION["total"])) {
                        echo "<div><b>Tola: </b>" . $_SESSION["total"] . "</div>";
                      } else {
                        echo "<div><b>Tola: </b>0</div>";
                      }
                      ?>
                </div>-->
        </div>


        <div class="row">
          <div class="col-12">
            <table class="table table-striped" id="lista-pedidos">
              <thead>
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
                //session_start();
                if (!empty($_SESSION["Productos"])) {
                  foreach ($_SESSION["Productos"] as $p) {
                    $id = $p["id"];
                    $nombre = $p["nombre"];
                    $precio = $p["precio"];
                    $cantidad = $p["cantidad"];
                    $subtotal = $p["subtotal"];
                ?>
                    <tr id="<?php echo $id ?>A">
                      <td><?php echo $nombre ?></td>
                      <td><?php echo $precio ?></td>
                      <td><input class='text-center' id="<?php echo $id ?>" disabled style='width:17%;' type="text" value="<?php echo $cantidad ?>"></td>
                      <td><?php echo $subtotal ?></td>
                      <td>
                        <button value="eliminar" type="button" class="btn btn-block btn-danger" name="eliminar" onclick="eliminar(<?php echo $id ?>, this.value)">Eliminar</button>
                      </td>
                    </tr>
                <?php
                  }
                } else {
                  echo " <div class='alert alert-warning' role='alert'>Tu carrito está vacío!</div>";
                }
                ?>
              </tbody>
            </table>
          </div>
        </div>
        <div class="row">
          <button type="button" class="btn btn-block btn-primary btn-lg">Realizar Pedido</button>
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