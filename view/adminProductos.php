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
            <h1>Productos</h1>
          </div>

          <div class="col-3">
            <form class="form-inline ml-3">
              <div class="input-group input-group-sm">
                <input class="form-control form-control" type="search" placeholder="buscar producto" aria-label="Search">
                <div class="input-group-append">
                  <button class="btn btn-navbar" type="submit">
                    <i class="fas fa-search"></i>
                  </button>
                </div>
              </div>
            </form>
          </div>

          <div class="col-3">
            <button type="button" class="btn btn-block btn-success">Agregar Producto</button>
          </div>

        </div>
        <div class="row">
          <div class="col-12">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Producto</th>
                  <th>Nombre</th>
                  <th>Descripción</th>
                  <th>Precio</th>
                  <th>Catalogo</th>
                  <th>&nbsp</th>
                  <th>&nbsp</th>
                </tr>
              </thead>

              <tbody>
                <?php

                use app\controller\ProductoController;

                $admincontroller = new ProductoController();
                $cproducto = $admincontroller->listarProductos();

                $i = 1;

                ?>
                <?php foreach ($cproducto as $pro) : ?>
                  <tr>
                    <td><?= $i;
                        $i++; ?></td>
                    <td>
                      <div class="col-12" style="width: 60px; height:60px;">
                        <img src="public/img/<?= $pro['img'] ?>.jpg" class="product-image" alt="Product Image" style="width:100%; height:100%;">
                      </div>
                    </td>
                    <td><?= $pro['1'] ?></td>
                    <td><?= $pro['caracteristicas'] ?></td>
                    <td><?= $pro['precio'] ?></td>
                    <td><?= $pro['7'] ?></td>
                    <td>
                      <a href="#"><button type="button" class="btn btn-block btn-success">Editar</button></a>
                    </td>

                    <td>
                      <button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#exampleModal">
                        Eliminar
                      </button>

                      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="exampleModalLabel">Eliminar Producto</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>

                            <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-dismiss="modal">cancelar</button>
                              <a href="index.php?p=adminProductos&id=<?= $pro['id_producto'] ?>"><button type="button" name="eliminar" class="btn btn-primary"><?= $pro["id_producto"] ?></button></a>
                            </div>
                          </div>
                        </div>
                      </div>

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
<?php
if (isset($_GET['eliminar'])) {
  echo "eliminar";
}








?>
<!-- Footer -->
<?php
include "layouts/footer.php";
?>
<!--/. Footer -->