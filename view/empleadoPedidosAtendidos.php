<!-- Header -->
<?php

use app\controller\PedidoController;

$pcontroller=new PedidoController;
$dni=$_SESSION['dni'];
$pedidos=$pcontroller->PedidosAtendidos($dni);
$i=1;
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
                  <th>subtotal</th>
                  <th>Cliente</th>
                  <th>&nbsp</th>
                </tr>
              </thead>

              <tbody>
            
                <?php foreach($pedidos as $ped): ?>
                <tr>
                
                  <td><?=$i;$i++?></td>
                  <td><?=$ped['fecha_entrega']?></td>
                  <td><?=$ped['direccion']?></td>
                  <td>S/<?=$ped['subtotal']?></td>
                  <td><?=$ped['nombre']?></td>
                  <td>
                    <a href="index.php?p=empleadoDetallesPedidos&id_pedido=<?=$ped['id_pedido'] ?>&id_cliente=<?=$ped['id_cliente'] ?>"><button type="button" class="btn btn-block btn-success">Ver Detalles</button></a>
                  </td>
                </tr>
                <?php endforeach ?>
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