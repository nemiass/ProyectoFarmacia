<body class="hold-transition sidebar-mini layout-navbar-fixed layout-fixed">
  <div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><img src="public/img/icons/menu.png" alt="menu" style="opacity: .8; width:30px;"></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="#" class="nav-link">Inicio</a>
        </li>
      </ul>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
        <!-- Notifications Dropdown Menu -->
        <?php if (isset($_SESSION["estado"])) : ?>
          <a href='index.php?p=logout' class='nav-link'>Cerrar sesión</a>
        <?php else : ?>
          <a href='index.php?p=login' class='nav-link'>Iniciar sesión</a>
        <?php endif; ?>

      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar elevation-1 bg-white">
      <!-- Brand Logo -->
      <a href="#" class="brand-link">
        <img src="public/img/icons/farmacia.png" alt="AdminLTE Logo" class="brand-image elevation-3" style="opacity: .8">
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
              <a href="index.php?p=admincuenta" class="nav-link">
                <i class="fas  fa-user-secret fa-lg mr-2"></i>
                <p>
                  Mi Cuenta
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="index.php?p=adminEmpleados" class="nav-link">
                <i class="fas fa-users fa-lg mr-2"></i>
                <p>
                  Empleados
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="index.php?p=adminClientes" class="nav-link">
                <i class="fas  fa-users fa-lg mr-2"></i>
                <p>
                  Clientes
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="index.php?p=adminCatalogo" class="nav-link">
                <i class="fas  fa-calendar-check fa-lg mr-2"></i>
                <p>
                  Catálogo Productos
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="index.php?p=adminProductos" class="nav-link">
                <i class="fas fa-tags fa-lg mr-2"></i>
                <p>
                  Productos
                </p>
              </a>
            </li>

            <li class="nav-item">
              <a href="index.php?p=adminPedidosAtendidos" class="nav-link">
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