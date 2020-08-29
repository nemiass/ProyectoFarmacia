<!-- Header -->
<?php

include "layouts/headerAdmin.php";
?>
<?php

use app\controller\AdminController;
use app\controller\FarmaciaController;

$admincontroller = new AdminController;
$farmaciacontroller = new  FarmaciaController;
$admin = $admincontroller->getAdmin($_SESSION['dni']);
$farmacia = $farmaciacontroller->datosFarmacia();

?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- Main row -->
      <div class="row">
        <div class="col-12 mt-3">
          <h2>Mi cuenta</h2>
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

              <table class="table table-borderless">
                <tbody>
                  <tr>
                    <td>Nombre:</td>
                    <td><?= $admin['nombre'] ?></td>
                  </tr>
                  <tr>
                    <td>Apelllido:</td>
                    <td><?= $admin['apellido'] ?></td>
                  </tr>
                  <tr>
                    <td>Dni:</td>
                    <td><?= $admin['dni'] ?></td>
                  </tr>
                  <tr>
                    <td>Telefono:</td>
                    <td><?= $admin['telefono'] ?></td>
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
              <h3 class="card-title">Datos de Farma Vida</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>

            <div class="card-body" style="display: block;">

              <table class="table table-borderless">
                <tbody>
                  <tr>
                    <th scope="row">Nombre:</th>
                    <td><?= $farmacia[0]['1'] ?></td>
                  </tr>

                  <tr>
                    <th scope="row">Direccion</th>
                    <td><?= $farmacia[0]['2'] ?></td>
                  </tr>

                  <tr>
                    <th scope="row">Telefono</th>
                    <td><?= $farmacia[0]['3'] ?></td>
                  </tr>

                  <tr>
                    <th scope="row">Correo</th>
                    <td><?= $farmacia[0]['4'] ?></td>
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


        <!-- /.card -->
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

              <table class="table table-borderless">
                <tbody>
                  <tr>
                    <td>User:</td>
                    <td><?= $_SESSION['user'] ?></td>
                  </tr>
                  <tr>
                    <td>Password:</td>
                    <td><?= $_SESSION['pass'] ?></td>
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