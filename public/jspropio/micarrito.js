function requestCarritoController(id, tipo) {
  const ajaxrequest = new XMLHttpRequest();
  let cantidad = document.getElementById(id).value;
  let idc = id;
  let accion = tipo;
  let url =
    "http://localhost/proyectoFarmacia/app/controller/CarritoController.php";
  let uri = url + `?id=${idc}&cantidad=${cantidad}&tipo=${accion}`;

  ajaxrequest.open("GET", uri, true);
  ajaxrequest.setRequestHeader(
    "Content-Type",
    "application/x-www-form-urlencoded"
  );

  ajaxrequest.onreadystatechange = function () {
    if (ajaxrequest.readyState == 4 && ajaxrequest.status == 200) {
      let datos = ajaxrequest.responseText;
      cantidadPedidos(datos);
    }
  };
  ajaxrequest.send();
}

function disminuir(id) {
  let cantidad = document.getElementById(id).value;
  if (cantidad > 1) {
    cantidad = parseInt(cantidad) - 1;
    document.getElementById(id).value = cantidad;
  }
}

function aumentar(id) {
  let cantidad = document.getElementById(id).value;
  if (cantidad > 0) {
    cantidad = parseInt(cantidad) + 1;
    document.getElementById(id).value = cantidad;
  }
}

function cantidadPedidos(cant) {
  document.getElementById("carrito").innerHTML = cant;
}

function eliminar(id, tipo) {
  requestCarritoController(id, tipo);
  document.getElementById(id + "A").remove();
}

/*function eliminarProducto(elemento){
    if(elemento.name === "eliminar"){
        elemento.parentElement.parentElement.remove();
    }
}
document.getElementById("lista-pedidos").addEventListener("click", function(e) {
    eliminarProducto(e.target);
})*/
