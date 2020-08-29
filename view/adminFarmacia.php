<!-- Header -->
<?php

use app\controller\PedidoController;

$pcontroller = new PedidoController;
$departamentos = $pcontroller->traerDepartamentos();
$provincias = $pcontroller->getAllProvincias();
$cont = 0;

$pcontroller->addDepartamento();
$pcontroller->deleteDepartamento();

include "layouts/headerAdmin.php";
?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <!-- Main row -->
            <div class="row">
                <div class="col-12 mt-3">
                    <h2>Mi Farmacia</h2>
                </div>
            </div>
            <div class="row mt">
                <div class="col-md-12 mt-2">
                    <div class="card card-success">
                        <div class="card-header">
                            <h3 class="card-title">Departamentos</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                            </div>
                        </div>

                        <div class="card-body" style="display: block; background:#eef4cb;">
                            <div class="row">
                                <div class="col-md-6">
                                    <form action="#" method="POST">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="" placeholder="Agregue departemento" name="nomd">
                                        </div>
                                        <div class="form-group">
                                            <input type="submit" class="form-control btn btn-danger" id="" value="Agregar" name="send">
                                        </div>
                                    </form>
                                </div>

                                <div class="col-md-6">
                                    <table class="table table-striped table-dark table-borderless table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Nombre Departamento</th>
                                                <th>&nbsp</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <?php
                                            if (!empty($departamentos)) :
                                                foreach ($departamentos as $p) : $cont += 1
                                            ?>
                                                    <tr>
                                                        <td><?= $cont ?></td>
                                                        <td><?= $p["nombre"] ?></td>
                                                        <td>
                                                            <a href="index.php?p=adminFarmacia&idp=<?= $p["id_departamento"] ?> " class="btn btn-success">Eliminar</a>
                                                        </td>
                                                    </tr>
                                                <?php endforeach;
                                            else : ?>
                                                <tr>
                                                    <td colspan="3">
                                                        <div class="alert alert-danger">No hay departamentos agregados</div>
                                                    </td>
                                                </tr>
                                            <?php endif; ?>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.card -->
            </div>
            <div class="row">
                <div class="col-md-12 mt-1">
                    <div class="card card-warning">
                        <div class="card-header">
                            <h3 class="card-title">Provincias</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                            </div>
                        </div>

                        <div class="card-body" style="display: block; background:#eef4cb;">
                            <div class="row">
                                <div class="col-md-6">
                                    <form action="#" method="POST">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="nomp" placeholder="Agregue provincia" name="nomp">
                                        </div>

                                        <div class="form-group">
                                            <select name="dep" id="iddep" class="form-control">
                                                <option value="">Departamento</option>
                                                <?php
                                                if (!empty($departamentos)) :
                                                    foreach ($departamentos as $p) :
                                                ?>
                                                        <option value="<?= $p["id_departamento"] ?>"><?= $p["nombre"] ?></option>
                                                <?php
                                                    endforeach;
                                                endif; ?>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <input type="button" class="form-control btn btn-danger" id="send2" value="Agregar" name="send2">
                                        </div>
                                    </form>
                                </div>

                                <div class="col-md-6">
                                    <select name="listdep" id="listdeps" class="custom-select mb-1">
                                        <option value="">Listar Provincias por departamento</option>
                                        <?php
                                        if (!empty($departamentos)) :
                                            foreach ($departamentos as $p) :
                                        ?>
                                                <option value="<?= $p["id_departamento"] ?>"><?= $p["nombre"] ?></option>
                                        <?php
                                            endforeach;
                                        endif; ?>
                                    </select>
                                    <table class="table table-striped table-dark table-borderless table-hover" id="tablaprovs">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Nombre Provincias</th>
                                                <th>&nbsp</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tb">
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.card -->
            </div>
            <div class="row">
                <div class="col-md-12 mt-1">
                    <div class="card card-danger">
                        <div class="card-header">
                            <h3 class="card-title">Distritos</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                            </div>
                        </div>

                        <div class="card-body" style="display: block; background:#eef4cb;">
                            <div class="row">
                                <div class="col-md-6">

                                    <form id="formulario-dist">

                                        <div class="row">
                                            <div class="col-6">

                                                <select name="depa" id="departamentos" class="form-control mb-1">
                                                    <option value="">Departamento</option>
                                                    <?php foreach ($departamentos as $p) : ?>
                                                        <option value=<?= $p['id_departamento'] ?>><?= $p['nombre'] ?></option>
                                                    <?php endforeach; ?>

                                                </select>

                                            </div>
                                            <div class="col-6">
                                                <select name="provi" id="provincias" class="form-control mb-1">
                                                    <option value="">Provincia</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="distrito" placeholder="Agregue distrito" name="disti">
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="submit" class="form-control btn btn-danger" id="send3" value="Agregar" name="send3">
                                                </div>
                                            </div>
                                        </div>

                                    </form>

                                </div>

                                <div class="col-md-6">
                                    <select name="listarDepatr" id="listDeparts" class="custom-select mb-1">
                                        <option value="">Departamento</option>
                                        <?php
                                        if ($departamentos != "vacio") :
                                            foreach ($departamentos as $d) :
                                        ?>
                                                <option value="<?= $d["id_departamento"] ?>"><?= $d["nombre"] ?></option>
                                        <?php endforeach;
                                        endif; ?>
                                    </select>
                                    <select name="listarDistitos" id="listarDistritoss" class="custom-select mb-2">
                                        <option value="">Distrito por provinvia</option>
                                    </select>
                                    <table class="table table-striped table-dark table-borderless table-hover" id="tabladist">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Nombre Distritos</th>
                                                <th>&nbsp</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tbody-distritos">
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.row (main row) -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

</div>
<!-- /.content-wrapper -->

<!-- Footer -->
<?php
include "layouts/footer.php";
?>
<script src="public/jspropio/farmacia.js"></script>
<script src="public/jspropio/farmacia2.js"></script>
<!--/. Footer -->