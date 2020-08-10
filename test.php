<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test</title>
</head>

<body>
    <h1>Mostrar datos de la base de datos Productos</h1>
    <?php
    $dsn = "mysql:host=localhost;dbname=farmacia";
    $user = "root";
    $password = "";
    $conn = new  PDO($dsn, $user, $password);
    $sql = "SELECT * FROM producto";
    $respuesta = $conn->prepare($sql);
    $respuesta->execute();
    $productos = $respuesta->fetchAll();
    $conn = null;

    require_once "config/autoload2.php";

    use app\Usuario;

    var_dump(Usuario::traerUser("goes"));
    session_start();
    session_destroy();
    ?>

    <table>
        <tr>
            <td>
                nombre
            </td>
            <td>
                precio
            </td>
        </tr>
        <?php foreach ($productos as $producto) :  ?>
            <tr>
                <td><?= $producto['nombre'] ?></td>
                <td><?= $producto['precio']  ?></td>
            </tr>
        <?php endforeach;  ?>
    </table>
</body>

</html>