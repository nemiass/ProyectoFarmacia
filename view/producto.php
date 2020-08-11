 <!-- Header -->
 <?php
  include "view/layouts/headerCliente.php";
  ?>
 <!--/. Header -->

 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
   <!-- Main content -->
   <section class="content">
     <div class="card card-solid">
       <div class="card-body">
         <div class="row">
           <?php

            use app\controller\ProductoController;

            $pcontroller = new ProductoController();
            $producto = $pcontroller->traerProducto($_GET["id"]);
            foreach ($producto as $p) {
              $id = $p["id_producto"];
              $nombre = $p["nombre"];
              $precio = $p["precio"];
              $desc = $p["caracteristicas"];
              $img = $p["img"];
            }
            ?>

           <div class="col-12 col-sm-6">
             <h3 class="d-inline-block d-sm-none"></h3>
             <div class="col-12" style="width: 500px; height:500px;">
               <img src="public/img/<?= $img ?>.jpg" class="product-image" alt="Product Image" style="width:100%; height:100%;">
             </div>
           </div>
           <div class="col-12 col-sm-6">
             <h3 class="my-3"><?= $nombre ?></h3>
             <p><?= $desc ?></p>
             <hr>

             <div class="bg-gray py-2 px-3 mt-4">
               <b>Precio:</b>
               <h2 class="mb-0">
                 S/<?= number_format($precio, 2, ".", ",") ?>
               </h2>
             </div>

             <div class="mt-4">
               <button type="button" class="btn btn btn-warning" style="width:15%;" onclick="disminuir(<?= $id ?>)">-</button>
               <?php if (isset($_SESSION["Productos"][$id])) : ?>
                 <input class='text-center' type='text' id=<?= $id ?> value=<?= $_SESSION['Productos'][$id]['cantidad'] ?> disabled style='width:10%;'>
               <?php else : ?>
                 <input class='text-center' type='text' id=<?= $id ?> value='1' disabled style='width:10%;'>
               <?php endif; ?>
               <button type="button" class="btn btn btn-warning" style="width:15%;" onclick="aumentar(<?= $id ?>)">+</button>
               <div class="btn  btn-lg btn-flat ml-5">
                 <button value="agregar" type="button" class="btn btn-block btn-success" onclick="requestCarritoController(<?= $id ?>, this.value)" style="width:100%;">
                   <i class="fas fa-cart-plus fa-lg mr-2"></i>
                   Agregar al carrito
                 </button>
               </div>
             </div>

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
  include "view/layouts/footer.php";
  ?>
 <!--/. Footer -->