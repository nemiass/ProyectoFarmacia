<!-- Header -->
<?php
include "layouts/headerEmpleado.php";
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
            <h1>PedidosAtendidos</h1>
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
                  <th>#</th>
                  <th>FechaEntregada</th>
                  <th>Lugar Etregado</th>
                  <th>Moto</th>
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
                  <td>Cliente</td>
                  <td>
                    <a href="index.php?p=empleadoDetallesPedidos"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                  </td>
                </tr>

                <tr>
                  <td>2</td>
                  <td>12-12-2020</td>
                  <td>Mi casa</td>
                  <td>S/100.00</td>
                  <td>Papo</td>
                  <td>
                    <a href="index.php?p=empleadodetallesPedidos"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
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

<!-- Footer -->
<?php
include "layouts/footer.php";
?>
<!--/. Footer -->