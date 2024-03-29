<?php
include "layouts/headerCliente.php";
?>
<!--/. Header -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <!-- Main row -->
            <div class="row">
                <?php

                use app\controller\CatalogoController;

                $ccontroller = new CatalogoController;
                $productos = $ccontroller->listarCatalogosxproducto($_GET["c"]);

                if ($productos) :
                    foreach ($productos as $producto) :
                        $id = $producto["id_pro"];
                        $nombre = $producto["nombre"];
                        $precio = $producto["precio"];
                        $img = $producto["img"];
                ?>
                        <div class="col-3 mt-2">
                            <a href="index.php?p=producto&id=<?= $id ?>">
                                <img src="<?= $img ?>" style='width:99%; height:60%;' alt="Imagen de producto">
                            </a>
                            <div style="height:25%;">
                                <p class="text-center mb-0 mt-0 "><b><?= $nombre ?></b></p>
                                <p class="mb-0 mt-0"> <b>Precio:</b> S/<?= number_format($precio, 2, ".", ",") ?></p>
                                <div class="mb-1">
                                    <button type="button" class="btn btn btn-warning" style="width:39%;" onclick="disminuir(<?= $id ?>)">-</button>
                                    <?php if (isset($_SESSION["Productos"][$id])) : ?>
                                        <input class='text-center' type='text' id=<?= $id ?> value=<?= $_SESSION['Productos'][$id]['cantidad'] ?> disabled style='width:17%;'>
                                    <?php else : ?>
                                        <input class='text-center' type='text' id=<?= $id ?> value='1' disabled style='width:18%;'>

                                    <?php endif; ?>
                                    <button type="button" class="btn btn btn-warning" style="width:39%;" onclick="aumentar(<?= $id ?>)">+</button>
                                </div>
                                <a href=""></a><button value="agregar" type="button" class="btn btn-block btn-success" onclick="requestCarritoController(<?= $id ?>, this.value)">
                                    <i class="fas fa-cart-plus fa-lg mr-2"></i>
                                    Agregar al carrito
                                </button>
                            </div>
                        </div>

                    <?php endforeach;

                else : ?>
                    <div class="row">
                        <div class='alert alert-warning' role='alert'>No hay productos agregados aun!!!</div>
                        <div class="col-12">
                        <?php endif; ?>
                        </div>
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
<!--/. Footer -->