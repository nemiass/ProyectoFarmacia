<?php

use app\controller\LoginController;

$lcontroller = new LoginController;
$lcontroller->cerrarSession();
header("location: index.php?p=login");
