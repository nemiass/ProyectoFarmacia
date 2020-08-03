 <!-- Header -->
  <?php 
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
            <div class="col-12 col-sm-6">
              <h3 class="d-inline-block d-sm-none">Producto 1</h3>
              <div class="col-12">
                <img src="../public/img/images.jpg" class="product-image" alt="Product Image">
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <h3 class="my-3">Producto 1</h3>
              <p>blablablbabalblablalbalblalblalballalabllablblalblablalbalblalbalalbblalbl
                blablalbalblalbalblablalblalblablablablbalblblaablblalbalabblablalbabla
                balblalbalblalblalbalablablballabbllablbalablbalbalblbalblabl.</p>
              <hr>
             

              <div class="bg-gray py-2 px-3 mt-4">
                <b>Precio unitario:</b>
                <h2 class="mb-0">
                  S/.100.00
                </h2>
                <b>Total:</b>
                <h2 class="mb-0">
                  S/.100.00
                </h2>
              </div>
    
              <div class="mt-4">
                <button type="button" class="btn btn btn-warning" style="width:20%;">-</button>
                <div class="btn btn-default btn-lg btn-flat">
                  1
                </div>
                <button type="button" class="btn btn btn-warning" style="width:20%;">+</button>
                <div class="btn btn-primary btn-lg btn-flat ml-3">
                  <i class="fas fa-cart-plus fa-lg mr-2"></i> 
                  Agregar al carrito
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
include "layouts/footer.php";
?>
<!--/. Footer --> 
  