<!-- Header -->
<?php
include "layouts/headerAdmin.php";
?>
<?php

use app\Cliente;
use app\controller\ClienteController;
use app\controller\FarmaciaController;

use app\controller\AdminController;
use app\controller\EmpleadoController;

$admincontroller = new AdminController;
$empleado=new EmpleadoController;
$cliente=new ClienteController;
$productos = $empleado->listarpedidosxempleado($_GET['id_cliente'],$_GET['id_pedido']);
$farmaciacontroller=new FarmaciaController();
$farmacia=$farmaciacontroller->datosFarmacia();
$clientearreglo =$cliente->traerCliente($_GET['id_cliente']);
$pedidosRealizados=$empleado->subtotal($_GET['id_cliente'],$_GET['id_pedido']);
$i = 1;
?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Main content -->
  <section class="content">

    <div class="container-fluid">
      <div class="row">
        <div class="col-12">

          <!-- Main content -->
          <div class="invoice p-3 mb-3 mt-2">
            <!-- title row -->
            <div class="row">
              <div class="col-12">

                <!-- Main content -->
                <div class="invoice p-3 mb-3 mt-2">
                  <!-- title row -->
                  <div class="row">
                    <div class="col-12">
                      <h4>
                        <i class="fas fa-globe"></i> Farmavida
                        <small class="float-right"><?php echo date("Y/m/d"); ?></small>
                      </h4>
                    </div>
                    <!-- /.col -->
                  </div>
                  <!-- info row -->
                  <div class="row invoice-info">
                    <div class="col-sm-4 invoice-col">
                    
                      <address>
                        <strong>Farmavida</strong><br>
                        <?= $farmacia[0]['ubicacion'] ?><br>
                        Huánuco Peru<br>
                        <?= $farmacia[0]['telefono'] ?><br>
                        <?= $farmacia[0]['correo'] ?>
                      </address>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4 invoice-col">
                      Destino
                      <address>
                        <strong><?= $clientearreglo[0]['nombre'] . " " .  $clientearreglo[0]['apellido'] ?></strong><br>
                        <?=$productos[0]['direccion']?><br>
                        Huánuco Peru<br>
                        <?= $clientearreglo[0]['telefono'] ?><br>
                        <?= $clientearreglo[0]['dni'] ?>
                      </address>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4 invoice-col">
                      <br>
                      <b>ID de pedido:</b> 4F3S8J<br>
                      <b>Fecha:</b><?=$productos[0]['fecha_entrega']?><br>
                    </div>
                    <!-- /.col -->
                  </div>
                  <!-- /.row -->

                  <!-- Table row -->
                  <div class="row">
                    <div class="col-12 table-responsive">
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            
                            <th>Producto</th>
                            <th>Serial #</th>
                            <th>Description</th>
                            <th>Precio</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <?php foreach ($productos as $producto) : ?>
                              <td><?= $producto['cantidad']?></td>
                              <td><?= $producto['nombre'] ?></td>
                              <td><?= $producto['id_producto'] ?></td>
                              <td><?= $producto['caracteristicas'] ?></td>
                              <td>S/<?= $producto['precio'] ?></td>
                          </tr>

                        <?php $i++;
                            endforeach ?>
                        </tbody>
                      </table>
                    </div>
                    <!-- /.col -->
                  </div>
                  <!-- /.row -->

                  <div class="row">
                    <!-- accepted payments column -->
                    <div class="col-6">
                      <p class="lead">Metodos de Pago:</p>
                      <img src="public/dist/img/credit/visa.png" alt="Visa">
                      <img src="public/dist/img/credit/mastercard.png" alt="Mastercard">
                      <img src="public/dist/img/credit/american-express.png" alt="American Express">
                      <img src="public/dist/img/credit/paypal2.png" alt="Paypal">
                    </div>
                    <!-- /.col -->
                    <div class="col-6">
                   

                      <div class="table-responsive">
                        <table class="table">
                          <tbody>
                            <tr>
                              <th style="width:50%">Subtotal:</th>
                              <td>S/ <?=$pedidosRealizados[0]['total'] ?></td>
                            </tr>
                            <tr>
                              <th>Delivery:</th>
                              <td>S/ 8.00</td>
                            </tr>
                            <tr>
                              <th>Total:</th>
                              <td>S/ <?=($pedidosRealizados[0]['total']+8) ?></td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                    <!-- /.col -->
                  </div>
                  <!-- /.row -->

                  <!-- this row will not appear when printing -->

                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

            <!-- this row will not appear when printing -->
            <div class="row no-print">
              <div class="col-12">
                <a href="index.php?p=imprimir.php" target="_blank" class="btn btn-default"><i class="fas fa-print"></i> Imprimir</a>
                <button type="button" class="btn btn-primary float-right" style="margin-right: 5px;">
                  <i class="fas fa-download"></i> Generar PDF
                </button>
              </div>
            </div>
          </div>
          <!-- /.invoice -->
        </div><!-- /.col -->
      </div><!-- /.row -->
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