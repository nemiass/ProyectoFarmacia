<?php

use app\controller\CatalogoController;
use app\controller\EmpleadoController;
use app\controller\ProductoController;

$productocontroller=new ProductoController;
$productocontroller->agregarProductos();
$catalogocontroller=new CatalogoController;
$catalogos=$catalogocontroller->listarCatalogos();

include "layouts/headerAdmin.php";
?>

<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">

        <div class="row">
          
        </div>

        <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-danger">
                <div class="card-header">
                    <h3 class="card-title">Rellene los datos del nuevo producto</h3><br>
                    <?php if (isset($_GET["e"])) : ?>
                    <h3 class="card-title"><?= $_GET["e"] ?></h3>
                    <?php endif; ?>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form role="form" method="POST" enctype="multipart/form-data">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nombre</label>
                            <input type="texto" class="form-control" id="exampleInputEmail1" placeholder="ingrese nombre" name="nombre">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Precio</label>
                            <input type="texto" class="form-control" id="exampleInputEmail1" placeholder="ingrese precio" name="precio">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Caracteristicas</label>
                            <input type="texto" class="form-control" id="exampleInputEmail1" placeholder="ingrese caracteristicas" name="caracteristicas">
                        </div>
                        <label for="exampleInputEmail1">imagen</label>
                        <div class="custom-file">
                        <input type="file" name="foto" ><br><br>
                        <select class="custom-select" name="id_catalogo">
                      <option selected>catalogos</option>
                      <?php foreach($catalogos as $cat):?>
                       <option value=<?=$cat['id_catalogo'] ?>><?=$cat['nombre'] ?></option>
                      <?php endforeach;?>
                        </select>
                    
                       </div>
                      
                    </div>
                    <!-- /.card-body -->

                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary" name="reg">Agregar</button>
                    </div>
                </form>


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