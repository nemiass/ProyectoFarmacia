<!-- Header -->
<?php

use app\controller\EmpleadoController;

$econtroller = new EmpleadoController;
$econtroller->RegistrarEmpleado();

include "layouts/headerAdmin.php";
?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">

        <div class="row">
            <?php if (isset($_GET["e"])) : ?>
                <div class="col-12 ml-2"><?= $_GET["e"] ?>!!!</div>
            <?php endif; ?>
        </div>

        <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-danger">
                <div class="card-header">
                    <h3 class="card-title">Rrellene los datos del nuevo empleado</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form role="form" method="POST">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Dni</label>
                            <input type="texto" class="form-control" id="exampleInputEmail1" placeholder="ingrese DNI" name="dni">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nombre</label>
                            <input type="texto" class="form-control" id="exampleInputEmail1" placeholder="ingrese nombre" name="nombre">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Apellido</label>
                            <input type="texto" class="form-control" id="exampleInputEmail1" placeholder="ingrese apellido" name="apellido">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Telefono</label>
                            <input type="texto" class="form-control" id="exampleInputEmail1" placeholder="ingrese telefono" name="telefono">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nombre de usuario</label>
                            <input type="texto" class="form-control" id="exampleInputEmail1" placeholder="ingrese nombre de usuario" name="usuario">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Contraseña</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="ingrese contraseña" name="contraseña">
                        </div>
                    </div>
                    <!-- /.card-body -->

                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary" name="reg">Agregar</button>
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