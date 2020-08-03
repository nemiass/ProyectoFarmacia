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
                    <h1>Pedidos Atendidos</h1>
                 </div>
                 <div class="col-6">
                    <div class="form-group">
                        <label>Agrupar por:</label>
                        <select class="custom-select">
                          <option>Todos</option>
                          <option>Ultimo año</option>
                          <option>Ultimo mes</option>
                        </select>
                      </div>
                 </div>
              </div>
            <div class="row">
              <div class="col-12">
                  <table class="table table-striped">
                      <thead>
                          <tr>
                              <th>Nro</th>
                              <th>FechaEntregada</th>
                              <th>Lugar Etregado</th>
                              <th>Moto pagado</th>
                              <th>Empleado</th>
                              <th>Cliente</th>
                              <th>&nbsp</th>
                          </tr>
                      </thead>
  
                      <tbody>
                          <tr>
                              <td>1</td>
                              <td>12-12-2020</td>
                              <td>Mi casa</td>
                              <td>S/100.00</td>
                              <td>Papo</td>
                              <td>Papo</td>
                              <td>
                                <a href="adminDetallesPedidos.php"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                            </td>
                          </tr>

                          <tr>
                            <td>2</td>
                            <td>12-12-2020</td>
                            <td>Mi casa</td>
                            <td>S/100.00</td>
                            <td>Papo</td>
                            <td>Papo</td>
                            <td>
                              <a href="adminDetallesPedidos.php"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                          </td>
                        </tr>
                        
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

<!-- Footer -->
  <?php 
  include "layouts/footer.php";
  ?>
<!--/. Footer --> 
  