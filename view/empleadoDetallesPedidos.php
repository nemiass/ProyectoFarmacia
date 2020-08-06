<!-- Header -->
<?php
include "layouts/headerEmpleado.php";
?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- Main row -->
      <div class="row">
        <div class="col-9 mt-3">
          <h2>Detalles del Pedido</h2>
        </div>

        <div class="col-3 mt-3">
          <button type="button" class="btn btn-block btn-warning">Atender</button>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="card card-secondary">
            <div class="card-header">
              <h3 class="card-title">Pedido</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>
            <div class="card-body">
              <table class="table">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Productos</th>
                    <th>Descripcón</th>
                    <th>Subtotal</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Anfetaminas</td>
                    <td>Bueno para la salud</td>
                    <td>S/ 100.00</td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Anfetaminas</td>
                    <td>Bueno para la salud</td>
                    <td>S/ 100.00</td>
                  </tr>

                  <tr>
                    <td>2</td>
                    <td>Anfetaminas</td>
                    <td>Bueno para la salud</td>
                    <td>S/ 100.00</td>
                  </tr>
                </tbody>
              </table>

              <table class="table mt-3">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Total</th>
                    <th>Tipo</th>
                    <th>Lugar de Entrega</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>S/. 200.00</td>
                    <td>Pagado</td>
                    <td>Jr. tal nuemero tal</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>

        <div class="col-md-6">
          <div class="card card-secondary">
            <div class="card-header">
              <h3 class="card-title">Cliente</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>
            <div class="card-body">
              <table class="table">
                <tbody>
                  <tr>
                    <th scope="row">Nombre</th>
                    <td>Tal persona</td>
                  </tr>
                  <tr>
                    <th scope="row">Apellidos:</th>
                    <td>Tal apellido</td>
                  </tr>

                  <tr>
                    <th scope="row">Teléfono:</th>
                    <td>Tal teléfono</td>
                  </tr>

                </tbody>
              </table>

            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>

      </div>
    </div>

    <!-- /.row (main row) -->
    <!-- /.container-fluid -->
  </section>
  <!-- /.content -->

</div>
<!-- /.content-wrapper -->

<!-- Footer -->
<?php
include "layouts/footer.php";
?>
<!--/. Footer -->