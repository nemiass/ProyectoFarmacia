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
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
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
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Inicio</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Notifications Dropdown Menu -->
      <?php
        if(isset($_SESSION)) {
          echo "<a href='#' class='nav-link'>Cerrar sesión</a>";
        }
        else{
          echo "<a href='login.php' class='nav-link'>Iniciar sesión</a>";
        }
      ?>
      
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar elevation-1 bg-white">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="../public/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">FarmaVida</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
          <li class="nav-item">
                <a href="adminCuenta.php" class="nav-link">
                  <i class="fas  fa-user-secret fa-lg mr-2"></i>
                  <p>
                    Mi Cuenta
                  </p>
                </a>
          </li>

          <li class="nav-item">
            <a href="adminEmpleados.php" class="nav-link">
              <i class="fas fa-users fa-lg mr-2"></i>
              <p>
                Empleados
              </p>
            </a>
          </li>

          <li class="nav-item">
              <a href="adminClientes.php" class="nav-link">
                <i class="fas  fa-users fa-lg mr-2"></i>
                <p>
                  Clientes
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="adminCatalogo.php" class="nav-link">
                <i class="fas  fa-calendar-check fa-lg mr-2"></i>
                <p>
                  Catálogo Productos
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="adminProductos.php" class="nav-link">
                <i class="fas fa-tags fa-lg mr-2"></i>
                <p>
                  Productos
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="adminPedidosAtendidos.php" class="nav-link">
                <i class="fas fa-truck fa-lg mr-2"></i>
                <p>
                  Pedidos Atendidos
                </p>
              </a>
            </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->

    </div>
    <!-- /.sidebar -->
  </aside>