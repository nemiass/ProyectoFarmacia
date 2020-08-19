<?php

use app\controller\CatalogoController;
use app\controller\ProductoController;

$catalogocontroller=new CatalogoController;

    $productocontroller=new ProductoController;
    $productocontroller->ActualizarProducto();

include "layouts/headerAdmin.php";



?>
<?php


?>

<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">

        
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-ssucces">
                <div class="card-header">
                    <h3 class="card-title">Editar Producto</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form role="form" method="POST" enctype="multipart/form-data">
                    <div class="card-body">
                        <div class="form-group">
                      
                            <label for="exampleInputEmail1">nombre</label>
                            <input type="texto" class="form-control" value='<?=$_GET['nombre'] ?>' id="exampleInputEmail1"  name="nombre">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">caracteristica</label>
                            <input type="texto" class="form-control" value='<?=$_GET['caracteristicas'] ?>'  id="exampleInputEmail1"  name="caracteristicas">
                      
                    </div>
                    <div class="form-group">
                            <label for="exampleInputEmail1">precio</label>
                            <input type="texto" class="form-control" value='<?=$_GET['precio'] ?>'  id="exampleInputEmail1"  name="precio">
                      
                    </div>
                    <div class="form-group">
                            <label for="exampleInputEmail1"></label>
                            <input type="hidden" class="form-control" value='<?=$_GET['id_producto'] ?>'  id="exampleInputEmail1"  name="id">

                            <input type="file" name="foto" value="null"><br><br>
                      
                    </div>
                    <!-- /.card-body -->

                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary" name="enviar">Agregar</button>
                    </div>
                </form>
                
            </div>

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
