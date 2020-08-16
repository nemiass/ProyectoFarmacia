<?php

use app\controller\CatalogoController;
$catalogocontroller=new CatalogoController;
if(isset($_POST['enviar'])){
    $catalogocontroller->EditarCatalogos($_POST['nombre'],$_POST['descripcion'],$_POST['dni']);
    header("location:index.php?p=adminEmpleados");
}
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
                    <h3 class="card-title">Editar Catalogo</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form role="form" method="POST">
                    <div class="card-body">
                        <div class="form-group">
                        <input  name="id" type="hidden" value="<?=$_GET['id'] ?>">
                            <label for="exampleInputEmail1">nombre</label>
                            <input type="texto" class="form-control" value='<?=$_GET['nombre'] ?>' id="exampleInputEmail1" placeholder="ingrese DNI" name="nombre">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">descripcion</label>
                            <input type="texto" class="form-control" value='<?=$_GET['descripcion'] ?>'  id="exampleInputEmail1" placeholder="ingrese nombre" name="descripcion">
                      
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
