 <!-- Header -->
  <?php 
  include "layouts/headerCliente.php";
  include "../config/autoload.php";
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

              if($productos){
                foreach($productos as $producto) {
                  $id = $producto["id_producto"];
                  $nombre = $producto["nombre"];
                  $precio = $producto["precio"];
                  $img = $producto["img"];
          ?>
             <div class="col-3 mt-3">
                <a href="plantillaGeneral.individual.php">
                  <img src="../public/img/<?php echo $img?>.jpg" style="width:100%; height:60%;" alt="Imagen de producto">
                </a>
                <div style="height:30%;">
                  <p><b><?php echo $nombre?></b></p>
                  <p> <b>Precio:</b><?php echo $precio?></p>
                  <button type="button" class="btn btn btn-warning" style="width:40%;">-</button>
                  <div class="btn btn-default btn-lg btn-flat">
                    1
                  </div>
                  <button type="button" class="btn btn btn-warning" style="width:40%;">+</button>
                  <button type="button" class="btn btn-block btn-success" onclick="agregarCarrito(<?php $id?>)">
                    <i class="fas fa-cart-plus fa-lg mr-2"></i> 
                    Agregar al carrito
                  </button>
                </div>
            </div>

          <?php
                } 
              }
              else{
                echo "<div>No hay productos agregados aún!!!</div>";
              }
          ?>

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