<?php
require_once "config/autoload2.php";
session_start();
use app\controller\VistasController;
$vcontroller = new VistasController();
if (isset($_SESSION["estado"])) {
} else {
    $vcontroller->plantillaGeneral();
}
