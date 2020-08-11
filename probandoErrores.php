<?php
session_start();
require_once "config/autoload2.php";

use app\controller\AdminController;

$admincontroller = new AdminController();
$admin = $admincontroller->getAdmin($_SESSION['dni']);

var_dump($admin);
?>