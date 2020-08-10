<?php

use app\controller\LoginController;

$lcontroller = new LoginController();
$lcontroller->iniciarSesion();
?>

<body class="hold-transition login-page">
  <div class="login-box">
    <div class="login-logo">
      <a href="#"><b>Farma</b>Vida</a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
      <div class="card-body login-card-body">
        <p class="login-box-msg">Inicie sessión</p>

        <form method="POST">

          <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="usuario" name="usu">
            <div class="input-group-append">
              <div class="input-group-append">
                <div class="input-group-text">
                  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-file-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M4 1h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2zm0 1a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H4z" />
                    <path d="M13.784 14c-.497-1.27-1.988-3-5.784-3s-5.287 1.73-5.784 3h11.568z" />
                    <path fill-rule="evenodd" d="M8 10a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                  </svg>
                </div>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input type="password" class="form-control" placeholder="contraseña" name="contra">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <button type="submit" name="log" class="btn btn-primary btn-block">Iniciar sessión</button>
        </form>


        <p class="mt-3">
          <a href="index.php?p=registrarse" class="text-center">Registrarme</a>
        </p>
        <?php if (isset($_GET['e'])) : ?>
          <div class="alert alert-danger text-center" role="alert">
            <?= $_GET['e'] ?>
          </div>
        <?php endif; ?>
      </div>
      <!-- /.login-card-body -->
    </div>
  </div>
  <!-- /.login-box -->
</body>