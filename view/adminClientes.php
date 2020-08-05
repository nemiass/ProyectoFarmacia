<!-- Header -->
<?php 
session_start();
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
                        <h1>Clientes</h1>
                    </div>
                    <div class="col-3 mt-3">
                    <form class="form-inline ml-3">
                        <div class="input-group input-group-sm">
                          <input class="form-control form-control" type="search" placeholder="buscar cliente" aria-label="Search">
                          <div class="input-group-append">
                            <button class="btn btn-navbar" type="submit">
                              <i class="fas fa-search"></i>
                            </button>
                          </div>
                        </div>
                      </form>
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
                            </tr>
                        </thead>
    
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Nombre tal</td>
                                <td>Apellido tal</td>
                                <td>Teléfono tal</td>
                                <td>
                                    <a href="adminDetallesClientes.php"><button type="button" class="btn btn-block btn-success">Mostrar</button></a>
                                </td>
                            </tr>

                            <tr>
                                <td>1</td>
                                <td>Nombre tal</td>
                                <td>Apellido tal</td>
                                <td>Teléfono tal</td>
                                <td>
                                    <a href="adminDetallesClientes.php"><button type="button" class="btn btn-block btn-success">Mostrar</button></a>
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
 