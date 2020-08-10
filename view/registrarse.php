<body class="hold-transition register-page">
  <div class="register-box">
    <div class="register-logo">
      <a href="#"><b>Farma</b>Vida</a>
    </div>

    <div class="card">
      <div class="card-body register-card-body">
        <p class="login-box-msg">Registrarse</p>

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
            <input name="contraseña" type="password" class="form-control" placeholder="contraseña">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          
          <div class="input-group mb-3">
            <input name="contraseña2" type="password" class="form-control" placeholder="confirmar contraseña">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <input name="reg" type="submit" class="btn btn-primary btn-block" value="registrarse">
        </form>
        <?php

        use app\controller\ClienteController;

        $ccontroller = new ClienteController();
        $ccontroller->Registrar();
        ?>
        <div class="mt-3">
          <a href="index.php?p=login.php" class="text-center">Ya tengo cuenta</a>

        </div>
      </div>
      <!-- /.form-box -->
    </div>
  </div>
</body>
<!--<script src="public/jspropio/apiReniec.js"></script>-->