<!-- Header -->
<?php
include "layouts/headerCliente.php";
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
          <h2>Mi cuenta</h2>
        </div>
        <div class="col-3 mt-3">
          <button type="button" class="btn btn-block btn-danger">Dar de baja mi cuenta</button>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 mt-3">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Mis datos personales</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>

            <div class="card-body" style="display: block;">

              <table class="table">
                <tbody>
                  <tr>
                    <td>Nombre:</td>
                    <td>Tal</td>
                  </tr>
                  <tr>
                    <td>Apelllido:</td>
                    <td>Tal</td>
                  </tr>
                  <tr>
                    <td>Dni:</td>
                    <td>Tal</td>
                  </tr>
                  <tr>
                    <td>Telefono:</td>
                    <td>Tal</td>
                  </tr>
                  <tr>
                    <td colspan="2">
                      <button type="button" class="btn btn-block btn-info">Actualizar mis datos</button>
                    </td>
                  </tr>
                </tbody>

              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>

        <div class="col-md-6 mt-3">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Mis datos para pedidos</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>

            <div class="card-body" style="display: block;">

              <table class="table">
                <tbody>
                  <tr>
                    <td>Dirección:</td>
                    <td>Tal</td>
                  </tr>
                  <tr>
                    <td>Descripción:</td>
                    <td>Tal</td>
                  </tr>

                  <tr>
                    <td colspan="2">
                      <button type="button" class="btn btn-block btn-info">Actualizar mis datos</button>
                    </td>
                  </tr>
                </tbody>

              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->

        </div>

      </div>
      <div class="row">
        <div class="col-md-6 mt-3">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Mis datos de mi cuenta</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>

            <div class="card-body" style="display: block;">

              <table class="table">
                <tbody>
                  <tr>
                    <td>User:</td>
                    <td>Tal</td>
                  </tr>
                  <tr>
                    <td>Password:</td>
                    <td>Tal</td>
                  </tr>

                  <tr>
                    <td colspan="2">
                      <button type="button" class="btn btn-block btn-info">Actualizar mis datos</button>
                    </td>
                  </tr>
                </tbody>

              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->

        </div>
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