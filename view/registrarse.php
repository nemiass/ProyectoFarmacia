<?php

use app\controller\ClienteController;

$ccontroller = new ClienteController;
$ccontroller->Registrar();
?>

<body class="hold-transition register-page" style="background-color: #f1efa7;">
  <div class="register-box">
    <div class="register-logo">
      <a href="index.php">
        <img src="public/img/icons/farmacia.png" alt="" style="width: 80px;">
      </a>
    </div>

    <div class="card">
      <div class="card-body register-card-body" style="background:#e1f9f4;">
        <p class="login-box-msg">Formulario de registro</p>
        <?php if (isset($_GET["e"])) :
          if ($_GET["e"] == "ok") : ?>
            <div class="alert alert-success" role="alert">Registrado Correctamente!!!</div>
          <?php else : ?>
            <div class="alert alert-danger" role="alert"><?= $_GET["e"] ?>!!!</div>
        <?php endif;
        endif; ?>
        <form action="#" method="POST">

          <div class="input-group mb-3">
            <input name="dni" type="text" id="dni" class="form-control" placeholder="dni" onkeyup="preRequest(this.value)">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input name="nombre" type="text" id="nombre" class="form-control" placeholder="nombres">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input name="apellido" type="text" id="apellido" class="form-control" placeholder="apellidos">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input name="telefono" type="text" class="form-control" placeholder="teléfono">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input name="usuario" type="text" class="form-control" placeholder="usuario">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input name="pasword" type="password" class="form-control" placeholder="contraseña">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input name="pasword2" type="password" class="form-control" placeholder="confirmar contraseña">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <input name="reg" type="submit" class="btn btn-primary btn-block" value="registrarse">
        </form>
        <div class="mt-3">
          <a href="index.php?p=login.php" class="text-center">Ya tengo cuenta</a>
        </div>
      </div>
      <!-- /.form-box -->
    </div>
  </div>
  <script src="public/jspropio/apiReniec.js"></script>