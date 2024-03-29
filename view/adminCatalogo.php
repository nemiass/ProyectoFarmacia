<?php
include "layouts/headerAdmin.php";
//echo $_SESSION['dni']=$_GET['dni']; 
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">

        <div class="card card-solid">
            <div class="card-body">
                <div class="row">
                    <div class="col-9">
                        <h1>Catalogo</h1>

                    </div>
                    <div class="col-3">
                        <a href="index.php?p=agregarCatalogo"><button type="button" class="btn btn-block btn-success">Agregar Catálogo</button></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <table class="table mt-4 table-borderless table-success table-hover table-striped">
                            <thead class="thead thead-dark">
                                <tr>
                                    <th>#</th>
                                    <th>Nombre</th>
                                    <th>Descripción</th>
                                    <th>&nbsp</th>
                                    <th>&nbsp</th>
                                    <th>&nbsp</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php


                                use app\controller\CatalogoController;

                                $admincontroller = new CatalogoController;
                                $catalogo = $admincontroller->listarCatalogos();
                                $i = 1;
                                ?>
                                <?php foreach ($catalogo as $cat) :  ?>
                                    <tr>
                                        <td><?= $i;
                                            $i++ ?></td>
                                        <td><?= $cat['nombre'] ?></td>
                                        <td><?= $cat['descripcion'] ?></td>
                                        <td>
                                            <a href="index.php?p=editarCatalogo&nombre=<?= $cat['nombre'] ?>&descripcion=<?= $cat['descripcion'] ?>&id=<?= $cat['id_catalogo'] ?>"><button type="button" class="btn btn-block btn-success">Editar</button></a>
                                        </td>

                                        <td>
                                            <a href="index.php?p=eliminarProducto"><button type="button" class="btn btn-block btn-danger">Eliminar</button></a>
                                        </td>

                                        <td>
                                            <a href="index.php?p=adminCatalogoProducto&id=<?= $cat['id_catalogo'] ?>&nombre=<?= $cat['nombre'] ?>"><button type="button" class="btn btn-block btn-warning">Ver productos</button></a>
                                        </td>
                                    </tr>

                                <?php endforeach;  ?>

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
<!-- /.content-wrapper -->

<!-- Footer -->
<?php
include "layouts/footer.php";
?>
<!--/. Footer -->