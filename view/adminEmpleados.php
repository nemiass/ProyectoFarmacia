<!-- Header -->
<?php
include "layouts/headerAdmin.php";

use app\controller\AdminController;
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
            <a href="index.php?p=agregarEmpleado">
              <button type="button" class="btn btn-block btn-success">Agregar Empleado</button>
            </a>
          </div>

        </div>
        <div class="row">
          <div class="col-12">
            <table class="table mt-4 table-borderless table-success table-hover table-striped">
              <thead class="thead thead-dark">
                <tr>
                  <th>#</th>
                  <th>Nombre</th>
                  <th>Apellido</th>
                  <th>Teléfono</th>
                  <th>&nbsp</th>
                  <th>&nbsp</th>
                </tr>
              </thead>
              <?php
              $admincontroller = new AdminController;
              $empleados = $admincontroller->listarEmpleado();
              
              ?>
              <tbody>
                <?php $i = 1;
                foreach ($empleados as $empleado) :   ?>
                  <tr>
                    <td><?= $i ?></td>
                    <td><?= $empleado['nombre'] ?></td>
                    <td><?= $empleado['apellido'] ?></td>
                    <td><?= $empleado['telefono'] ?></td>
                    <td>
                      <a href="index.php?p=adminDetallesEmpleados&id_empleado=<?=$empleado['id_empleado']?>&dni=<?=$empleado['dni']?>"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                    </td>

                    <td>
                      <a href="index.php?p=eliminarEmpleado&dni=<?= $empleado['dni']?>"><button type="button" class="btn btn-block btn-danger">Dar de baja</button></a>
                    </td>
                  </tr>
                <?php $i++;
                endforeach;   ?>

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