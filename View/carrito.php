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
                <h1>Productos del carrito</h1>
            </div>
          <div class="row">
            <div class="col-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Producto</th>
                            <th>Precio</th>
                            <th>Cantidad</th>
                            <th>&nbsp</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>Anfetaminas</td>
                            <td>S/.100.00</td>
                            <td>2</td>
                            <td>
                                <button type="button" class="btn btn-block btn-danger">Eliminar</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Anfetaminas</td>
                            <td>S/.100.00</td>
                            <td>2</td>
                            <td>
                                <button type="button" class="btn btn-block btn-danger">Eliminar</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Anfetaminas</td>
                            <td>S/.100.00</td>
                            <td>2</td>
                            <td>
                                <button type="button" class="btn btn-block btn-danger">Eliminar</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Anfetaminas</td>
                            <td>S/.100.00</td>
                            <td>2</td>
                            <td>
                                <button type="button" class="btn btn-block btn-danger">Eliminar</button>
                            </td>
                        </tr>
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