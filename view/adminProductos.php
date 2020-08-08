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
                  <th>img</th>
                  <th>Nombre</th>
                  <th>Descripción</th>
                  <th>Precio</th>
                  <th>Catalogo</th>
                  <th>&nbsp</th>
                  <th>&nbsp</th>
                </tr>
              </thead>

              <tbody>
                <tr>
                  <td>1</td>
                  <td>Img</td>
                  <td>Nombre tal</td>
                  <td>desc tal</td>
                  <td>precio tal</td>
                  <td>catalogo tal</td>
                  <td>
                    <a href="#"><button type="button" class="btn btn-block btn-success">Editar</button></a>
                  </td>

                  <td>
                    <a href="#"><button type="button" class="btn btn-block btn-danger">Eliminar</button></a>
                  </td>


                </tr>

                <tr>
                  <td>1</td>
                  <td>Img</td>
                  <td>Nombre tal</td>
                  <td>desc tal</td>
                  <td>precio tal</td>
                  <td>catalogo tal</td>
                  <td>
                    <a href="#"><button type="button" class="btn btn-block btn-success">Editar</button></a>
                  </td>

                  <td>
                    <a href="#"><button type="button" class="btn btn-block btn-danger">Eliminar</button></a>
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