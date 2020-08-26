<!-- Header -->
<?php
 
use app\controller\ClienteController;
use app\controller\PedidoController;

$ccontroller = new ClienteController;
$pcontroller=new PedidoController;
$productoss=$_SESSION["Productos"];
$cliente = $ccontroller->traerCliente($_SESSION['dni']);
$id_cliente=$cliente['id_cliente'];

//session_start();
include "layouts/headerCliente.php";
//$pedido=$pcontroller->registrarPedido($cliente['id_cliente']);

?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Main content -->
  <section class="content">

    <div class="card card-solid">
      <div class="card-body">
        <div class="row">
          <div class="col-10">
            <h1></h1>
                      </div>
          <!--<div class="col-2 mt-3">
                      <?php
                      /**if (isset($_SESSION["total"])) {
                        echo "<div><b>Tola: </b>" . $_SESSION["total"] . "</div>";
                      } else {
                        echo "<div><b>Tola: </b>0</div>";
                      }**/
                      ?>
                </div>-->
        </div>


        <div class="row">
          <div class="col-12">
        
            <table class="table table-striped" id="lista-pedidos">
              <thead>
                <tr>
                  <th>Producto</th>
                  <th>Precio</th>
                  <th>Cantidad</th>
                  <th>Sub Total</th>
                  <th>&nbsp</th>
                  <?= var_dump($productoss) ?>
                </tr>
              </thead>

              <tbody>
                <?php
                //session_start();
                $pedido=$pcontroller->registrarPedido($id_cliente);
             
               $id_pedido=$pedido[0]['id_pedido'];
                if (!empty($_SESSION["Productos"])) :
                  foreach ($productoss as $p) :
                    $id = $p["id"];
                    $nombre = $p["nombre"];
                    $precio = $p["precio"];
                    $cantidad = $p["cantidad"];
                    $subtotal = $p["subtotal"];
                    $pcontroller->registrarPedidoProducto($cantidad,$id,$id_pedido,$id);
                ?>
             
                    <tr id="<?= $id ?>">
                      <td><?= $nombre ?></td>
                      <td>S/<?= number_format($precio, 2, ".", ",") ?></td>
                      <td><input class='text-center' id="<?= $id ?>" disabled style='width:17%;' type="text" value="<?= $cantidad ?>"></td>
                      <td>S/<?= number_format($subtotal, 2, ".", ",") ?></td>
                      <td>
                        <a href="index.php?p=carrito"><button value="eliminar" type="button" class="btn btn-block btn-danger" name="eliminar" onclick="eliminar(<?= $id ?>, this.value)">Eliminar</button></a>
                      </td>
                    </tr>
                  <?php
                  endforeach;
                else : ?>
                  <div class='alert alert-warning' role='alert'>Tu carrito está vacío!</div>
                <?php endif; ?>
                
              </tbody>
            </table>
       
          </div>
        </div>
        <form  role="form" method="POST" >          
                            <label for="exampleInputEmail1">direccion de entrega</label>
                            <input type="texto" class="form-control"  id="exampleInputEmail1"  name="direccion">
                      
              
       

                            <label for="exampleInputEmail1">Fecha de entrega </label>
                            <input type="date"  placeholder="dd-mm-yyyy"class="form-control"  id="exampleInputEmail1"  name="fecha">
                      <br><br>
                   
        <div class="row">
      
        <?php if(!isset($_POST['enviar'])): ?>
          <button type="submit" class="btn btn-block btn-primary btn-lg" name="enviar">Realizar Pedido</button>
     



 
 

     
        </div>
        
      </div>
      </form>
      <!-- /.card-body -->
        <?php else: ?>
        <?php  $_SESSION["Productos"]=null;
                      $_SESSION["cantidad"]=null;  ?>
      <div class="row">
  <a href=" index.php?p=productos"><button type="button" class="btn btn-block btn-primary btn-lg" name="enviar">Pedido Exitoso</button></a></div>
    </div>
    <?php  endif ?>
  </section>
  <!-- /.content -->

</div>
<!-- /.content-wrapper -->

<!-- Footer -->
<?php
include "layouts/footer.php";
?>
<!--/. Footer -->