<!-- Header -->
<?php

use app\controller\CatalogoController;

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
          <div class="col-9">
            <h1>Catálogo  <?= $_GET['nombre']?></h1>
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

        </div>
   
                <?php
              $catalogocontroller=new CatalogoController;
              $producto=$catalogocontroller->listarCatalogosxproducto($_GET['id']);
             
             $i=1;
               ?>
               <?php if($producto):?>
                <div class="row">
          <div class="col-12">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>img</th>
                  <th>Nombre</th>
                  <th>Descripción</th>
                  <th>Precio</th>
                  <th>&nbsp</th>
                  <th>&nbsp</th>
                </tr>
              </thead>

              <tbody>
                <?php foreach($producto as $pro): ?>
                <tr>
                  <td><?= $i; $i++?></td>
                  <td>  <div class="col-12" style="width: 60px; height:60px;">
                        <img src="public/img/<?= $pro['img'] ?>.jpg" class="product-image" alt="Product Image" style="width:100%; height:100%;">
                      </div></td>
                  <td><?=$pro['nombre']?></td>
                  <td><?=$pro['caracteristicas']?></td>
                  <td><?=$pro['precio']?></td>
                  <td>
                    <a href="#"><button type="button" class="btn btn-block btn-success">Editar</button></a>
                  </td>

                  <td>
                    <a href="#"><button type="button" class="btn btn-block btn-danger">Eliminar</button></a>
                  </td>
                  </tbody>
                <?php endforeach; ?>
                  <?php else: ?>

                    <h1>no hay productos en este catalogo</h1>

               <?php endif;?>

               
          
               
             
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