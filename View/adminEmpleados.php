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
                    <div class="col-9">
                        <h1>Empleados</h1>
                    </div>
                    <div class="col-3">
                        <button type="button" class="btn btn-block btn-success">Agregar Empleado</button>
                    </div>
                    
                </div>
              <div class="row">
                <div class="col-12">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Teléfono</th>
                                <th>&nbsp</th>
                                <th>&nbsp</th>
                            </tr>
                        </thead>
    
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Nombre tal</td>
                                <td>Apellido tal</td>
                                <td>Teléfono tal</td>
                                <td>
                                    <a href="adminDetallesEmpleados.php"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                                </td>
  
                                <td>
                                  <a href="#"><button type="button" class="btn btn-block btn-danger">Dar de baja</button></a>
                              </td>
                            </tr>

                            <tr>
                              <td>1</td>
                              <td>Nombre tal</td>
                              <td>Apellido tal</td>
                              <td>Teléfono tal</td>
                              <td>
                                  <a href="adminDetallesEmpleados.php"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                              </td>

                              <td>
                                <a href="#"><button type="button" class="btn btn-block btn-danger">Dar de baja</button></a>
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
  