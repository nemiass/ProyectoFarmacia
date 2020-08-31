let send2 = document.getElementById("send2");

send2.addEventListener("click", () => {
  let url = "m=addProvincia";
  request(url, "addProvincia");
});

function request(link, metodo) {
  var ajaxrequest = new XMLHttpRequest();
  const url_base =
    "http://localhost/proyectoFarmacia/app/controller/ajaxController.php";
  let url = url_base + `?${link}`;
  ajaxrequest.open("POST", url, true);
  ajaxrequest.setRequestHeader(
    "Content-type",
    "application/x-www-form-urlencoded"
  );

  if (metodo == "addProvincia") {
    let nomp = document.getElementById("nomp").value;
    let id_dep = document.getElementById("iddep").value;
    ajaxrequest.send(`n=${nomp}&d=${id_dep}`);
  }
  ajaxrequest.onreadystatechange = () => {
    if (ajaxrequest.readyState == 4 && ajaxrequest.status == 200) {
      if (metodo == "addProvincia") {
        document.getElementById("nomp").value = "";
        document.getElementById("iddep").value = "";
        tbodyProvincias();
      }
    }
  };
}

function tbodyProvincias() {
  let id_dep = document.getElementById("listdeps").value;
  let ajaxrequest = new XMLHttpRequest();
  const url_base =
    "http://localhost/proyectoFarmacia/app/controller/ajaxController.php";
  let url = url_base + `?m=getProvinciasHtml&id=${id_dep}`;
  ajaxrequest.open("GET", url, true);
  ajaxrequest.onreadystatechange = () => {
    if (ajaxrequest.readyState == 4 && ajaxrequest.status == 200) {
      let body = ajaxrequest.responseText;
      document.getElementById("tb").innerHTML = body;
    }
  };
  ajaxrequest.send();
}

let listdeps = document.getElementById("listdeps");
listdeps.addEventListener("change", tbodyProvincias);

function getProvincias2() {
  let id_ped = document.getElementById("departamentos").value;
  const url_base =
    "http://localhost/proyectoFarmacia/app/controller/ajaxController.php";
  let url = url_base + `?m=getProvinciasxIdHtml&id=${id_ped}`;

  fetch(url)
    .then((dato) => dato.text())
    .then((data) => {
      document.getElementById("provincias").innerHTML = data;
    });
}
