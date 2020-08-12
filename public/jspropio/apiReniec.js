function sendRequest() {
  let token =
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6Im5laGVtaWFzdGZAZ21haWwuY29tIn0.        4heFpCuWoTFH7ert4sUz4U0lZGJgrkpFh6FwJ5yI5fc";
  let dni = document.getElementById("dni").value;
  let url = `https://dniruc.apisperu.com/api/v1/dni/${dni}?token=${token}`;

  const request = new XMLHttpRequest();
  request.open("GET", url, true);
  request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

  request.onreadystatechange = function () {
    if (request.readyState == 4 && request.status == 200) {
      //console.log(request.responseText);
      let datos = JSON.parse(request.responseText);
      document.getElementById("nombre").value = letraCapital(datos["nombres"]);
      document.getElementById("apellido").value =
        letraCapital(datos["apellidoPaterno"]) +
        " " +
        letraCapital(datos["apellidoMaterno"]);
    }
  };
  request.send();
}

function preRequest(dni) {
  if (dni.length == 8) {
    sendRequest();
  } else {
    document.getElementById("nombre").value = "";
    document.getElementById("apellido").value = "";
  }
}

function letraCapital(texto) {
  return texto.charAt(0) + texto.slice(1).toLowerCase();
}
