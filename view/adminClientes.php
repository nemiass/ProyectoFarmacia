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
            <table class="table mt-4 table-borderless table-success table-hover table-striped">
              <thead class="thead thead-dark">
                <tr>
                  <th>#</th>
                  <th>Nombre</th>
                  <th>Apellido</th>
                  <th>Teléfono</th>
                  <th>&nbsp</th>
                </tr>
              </thead>
              <?php

              use app\controller\AdminController;

              $admincontroller = new AdminController;
              $clientes = $admincontroller->listarClientes();
              $hola = 'hola';
              ?>
              <tbody>
                <?php $i = 1;
                foreach ($clientes as $cliente) :  ?>
                  <tr>
                    <td><?= $i ?></td>
                    <td><?= $cliente['nombre']  ?></td>
                    <td><?= $cliente['apellido']  ?></td>
                    <td><?= $cliente['telefono']  ?></td>
                    <td>
                      <a href="index.php?p=adminDetallesClientes&id_cliente=<?= $cliente['id_cliente'] ?>"><button type="button" class="btn btn-block btn-success">Mostrar</button></a>
                    </td>
                  </tr>
                <?php $i++;
                endforeach; ?>
              </tbody>
            </table>
          </div>
        </div>
        <!-- /.card-body -->
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