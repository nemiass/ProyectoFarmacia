<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a href="http://">carrito de compras</a>
    <?php
    
  session_start();
if(isset($_GET['enviar'])){
  $_SESSION['suma']=$_SESSION['suma']+$_GET['enviar'];
echo $_SESSION['suma'];
}
  ?>
 ///
 
 /*productos  mostrar con boostrap*/
  <form action="" method="get">
    <input type="submit" value=50 name="enviar">
    </form>
    <form action="" method="get">
    <input type="submit" value=100 name="enviar">
    </form>
    <form action="" method="get">
    <input type="submit" value=10 name="enviar">
    </form>
</body>
</html>