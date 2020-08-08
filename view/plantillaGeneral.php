<?php
include "layouts/headerCliente.php";

use app\controller\ProductoController;
?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- Main row -->
      <div class="row">
        <?php
        $pcontroller = new ProductoController();
        $productos = $pcontroller->listarProductos();

        if ($productos) :
          foreach ($productos as $producto) :
            $id = $producto["id_producto"];
            $nombre = $producto["nombre"];
            $precio = $producto["precio"];
            $img = $producto["img"];
        ?>
            <div class="col-3 mt-2 mb-3">
              <a href="plantillaGeneral.individual.php?id=<?= $id ?>">
                <img src="../public/img/<?= $img ?>.jpg" style="width:99%; height:70%;" alt="Imagen de producto">
              </a>
              <div style="height:30%;">
                <p class="text-center mb-0 "><b><?= $nombre ?></b></p>
                <p class="mb-0"> <b>Precio:</b> S/<?= number_format($precio, 2, ".", ",") ?></p>
                <div class="mb-1">
                  <button type="button" class="btn btn btn-warning" style="width:39%;" onclick="disminuir(<?= $id ?>)">-</button>
                  <?php if (isset($_SESSION["Productos"][$id])) : ?>
                    <input class='text-center' type='text' id=<?= $id ?> value=<?= $_SESSION['Productos'][$id]['cantidad'] ?> disabled style='width:17%;'>
                  <?php else : ?>
                    <input class='text-center' type='text' id=<?= $id ?> value='1' disabled style='width:18%;'>

                  <?php endif; ?>
                  <button type="button" class="btn btn btn-warning" style="width:39%;" onclick="aumentar(<?= $id ?>)">+</button>
                </div>
                <a href=""></a><button value="agregar" type="button" class="btn btn-block btn-success" onclick="requestCarritoController(<?= $id ?>, this.value)">
                  <i class="fas fa-cart-plus fa-lg mr-2"></i>
                  Agregar al carrito
                </button>
              </div>
            </div>

          <?php endforeach;

        else : ?>
          <div>No hay productos agregados aún!!!</div>

        <?php endif; ?>

      </div>
      <!-- /.row (main row) -->
    </div><!-- /.container-fluid -->
  </section>
  <!-- /.content -->

</div>
<!-- /.content-wrapper -->

<!-- Footer -->
<?php
include "layouts/footer.php";
?>
<!--/. Footer -->