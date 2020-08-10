<?php
require_once "config/autoload2.php";
session_start();

use app\controller\VistasController;

$vcontroller = new VistasController();
$vcontroller->plantillaGeneral();
