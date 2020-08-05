
// TODO:
function requestCarritoController(id) {
    const ajaxrequest = new XMLHttpRequest();
    let cantidad = document.getElementById(id).value;
    let idc = id;
    let url = "http://localhost/proyectoFarmacia/app/controller/CarritoController.php";
    let uri = url+`?id=${idc}&cantidad=${cantidad}`;

    ajaxrequest.open('GET', uri, true);
    ajaxrequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    ajaxrequest.onreadystatechange = function () {
        if(ajaxrequest.readyState == 4 && ajaxrequest.status == 200) {
            let datos = ajaxrequest.responseText;
            cantidadPedidos(datos);
        }
    };
    ajaxrequest.send();
};

function disminuir(id) {
    let cantidad = document.getElementById(id).value;
    if (cantidad>1){
        cantidad  = parseInt(cantidad) - 1;
        document.getElementById(id).value = cantidad;
    }
}

function aumentar(id) {
    let cantidad = document.getElementById(id).value;
    if (cantidad>0){
        cantidad  = parseInt(cantidad) + 1;
        document.getElementById(id).value = cantidad; 
    }
}

function cantidadPedidos(cant){
    document.getElementById("carrito").innerHTML = cant;
}
