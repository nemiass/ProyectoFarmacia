<?php
session_start();
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Farma Vida</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../public/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../public/https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="../public/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../public/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="../public/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../public/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../public/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../public/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="../public/plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition sidebar-mini layout-navbar-fixed layout-fixed">
  <div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><img src="../public/img/icons/menu.png" alt="menu" style="opacity: .8; width:30px;"></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="plantillaGeneral.php" class="nav-link">Inicio</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="#" class="nav-link">Contáctanos</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="#" class="nav-link">Quienes Somos??</a>
        </li>
      </ul>

      <!-- SEARCH FORM -->
      <form class="form-inline ml-3">
        <div class="input-group input-group-sm">
          <input class="form-control form-control-navbar" type="search" placeholder="buscar producto" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-navbar" type="submit">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </div>
      </form>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
        <!-- Notifications Dropdown Menu -->
        <?php if ($_SESSION) : ?>
          <a href='#' class='nav-link'>Cerrar sesión</a>
        <?php else : ?>
          <a href='login.php' class='nav-link'>Iniciar sesión</a>
        <?php endif; ?>

      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar elevation-1 bg-white">
      <!-- Brand Logo -->
      <a href="#" class="brand-link">
        <img src="../public/img/icons/farmacia.png" alt="AdminLTE Logo" class="brand-image elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Farma<b>Vida</b></span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
                 with font-awesome or any other icon font library -->

            <li class="nav-item">
              <a href="micuenta.php" class="nav-link">
                <i class="fas  fa-user fa-lg mr-2"></i>
                <p>
                  Mi Cuenta
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="carrito.php" class="nav-link">
                <i class="fas fa-cart-plus fa-lg mr-2"></i>
                <p>
                  Mi Carrito
                  <span class="right badge badge-danger" id="carrito">
                    <?php
                    if (isset($_SESSION["cantidad"])) {
                      echo $_SESSION["cantidad"];
                    } else {
                      echo "0";
                    }
                    ?>
                  </span>
                </p>
              </a>
            </li>

            <li class="nav-item has-treeview">
              <a href="#" class="nav-link active">
                <i class="fas fa-truck fa-lg mr-2"></i>
                <p>
                  Mis pedidos
                  <i class="right fa fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview" style="display: none;">
                <li class="nav-item">
                  <a href="misPedidos.php" class="nav-link active">
                    <i class="fa fa-circle-o nav-icon"></i>
                    <p>Pedidos Actuales</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="historialPedidos.php" class="nav-link">
                    <i class="fa fa-circle-o nav-icon"></i>
                    <p>Historial Pedidos</p>
                  </a>
                </li>
              </ul>
            </li>

            <li class="nav-header">
              CATEGORÍAS
            </li>

            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="fa fa-tags nav-icon"></i>
                <p>
                  Cuidado Personal
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="fa fa-tags nav-icon"></i>
                <p>
                  Belleza
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="fa fa-tags nav-icon"></i>
                <p>
                  Artículos de protección
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="fa fa-tags nav-icon"></i>
                <p>
                  Etc
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="fa fa-tags nav-icon"></i>
                <p>
                  Etc
                </p>
              </a>
            </li>

          </ul>
        </nav>
        <!-- /.sidebar-menu -->

      </div>
      <!-- /.sidebar -->
    </aside>