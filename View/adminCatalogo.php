
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
                        <h1>Catalogo</h1>
                    </div>
                    <div class="col-3">
                        <button type="button" class="btn btn-block btn-success">Agregar Catálogo</button>
                    </div>
                </div>
              <div class="row">
                <div class="col-12">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Descripción</th>
                                <th>&nbsp</th>
                                <th>&nbsp</th>
                            </tr>
                        </thead>
    
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Nombre tal</td>
                                <td>desc tal</td>
                                <td>
                                    <a href="#"><button type="button" class="btn btn-block btn-success">Editar</button></a>
                                </td>
  
                                <td>
                                  <a href="#"><button type="button" class="btn btn-block btn-danger">Eliminar</button></a>
                              </td>

                              <td>
                                <a href="adminCatalogoProducto.php"><button type="button" class="btn btn-block btn-warning">Ver productos</button></a>
                            </td>
                            </tr>

                            <tr>
                                <td>1</td>
                                <td>Nombre tal</td>
                                <td>desc tal</td>
                                <td>
                                    <a href="#"><button type="button" class="btn btn-block btn-success">Editar</button></a>
                                </td>
  
                                <td>
                                  <a href="#"><button type="button" class="btn btn-block btn-danger">Eliminar</button></a>
                              </td>

                              <td>
                                <a href="adminCatalogoProducto.php"><button type="button" class="btn btn-block btn-warning">Ver productos</button></a>
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