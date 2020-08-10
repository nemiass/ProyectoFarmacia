function requestAjax() {
  const ajax = new XMLHttpRequest();
  ajax.open("GET", "server.php", true);
  //ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  ajax.onreadystatechange = function () {
    if (ajax.readyState == 4 && ajax.status == 200) {
      let datos = ajax.responseText;
      console.log(datos);
    }
  };
  ajax.send("a=5&b=10"); // no funciona porque quiero pasar GET por url, solo se puede con post en GET va directo en la url
}
