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
      <div class="row">
        <div class="col-12">

          <!-- Main content -->
          <div class="invoice p-3 mb-3 mt-2">
            <!-- title row -->
            <div class="row">
              <div class="col-12">
                <h4>
                  <i class="fas fa-globe"></i> Famavida SA.
                  <small class="float-right">Date: 2/10/2014</small>
                </h4>
              </div>
              <!-- /.col -->
            </div>
            <!-- info row -->
            <div class="row invoice-info">
              <div class="col-sm-4 invoice-col">
                Origen
                <address>
                  <strong>Farmavida</strong><br>
                  Jr. tal numero tal<br>
                  Huánuco Peru<br>
                  Telefono: (804) 123-5432<br>
                  Correo: farmavida@farma.com
                </address>
              </div>
              <!-- /.col -->
              <div class="col-sm-4 invoice-col">
                Destino
                <address>
                  <strong>Tal persona</strong><br>
                  Jr. tal numero tal <br>
                  Huánuco Peru<br>
                  Telefono: (555) 539-103<br>
                  DNI: 12345678
                </address>
              </div>
              <!-- /.col -->
              <div class="col-sm-4 invoice-col">
                <br>
                <b>ID de pedido:</b> 4F3S8J<br>
                <b>Fecha:</b> 2/22/2014<br>
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
                      <th>Cantidad</th>
                      <th>Producto</th>
                      <th>Serial #</th>
                      <th>Description</th>
                      <th>Subtotal</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>Anfetaminas</td>
                      <td>455-981-221</td>
                      <td>Buenardo la receta</td>
                      <td>S/100.00</td>
                    </tr>

                    <tr>
                      <td>1</td>
                      <td>Anfetaminas</td>
                      <td>455-981-221</td>
                      <td>Buenardo la receta</td>
                      <td>S/100.00</td>
                    </tr>

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
                <img src="../public/dist/img/credit/visa.png" alt="Visa">
                <img src="../public/dist/img/credit/mastercard.png" alt="Mastercard">
                <img src="../public/dist/img/credit/american-express.png" alt="American Express">
                <img src="../public/dist/img/credit/paypal2.png" alt="Paypal">
              </div>
              <!-- /.col -->
              <div class="col-6">
                <p class="lead">Amount Due 2/22/2014</p>

                <div class="table-responsive">
                  <table class="table">
                    <tbody>
                      <tr>
                        <th style="width:50%">Subtotal:</th>
                        <td>S/ 200.00</td>
                      </tr>
                      <tr>
                        <th>Delivery:</th>
                        <td>S/ 8.00</td>
                      </tr>
                      <tr>
                        <th>Total:</th>
                        <td>S/ 208.00</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

            <!-- this row will not appear when printing -->
            <div class="row no-print">
              <div class="col-12">
                <a href="invoice-print.php" target="_blank" class="btn btn-default"><i class="fas fa-print"></i> Imprimir</a>
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