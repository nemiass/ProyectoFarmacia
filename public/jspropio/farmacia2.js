document
  .getElementById("departamentos")
  .addEventListener("change", getProvincias);
function getProvincias() {
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

document.getElementById("listDeparts").addEventListener("change", getProv);
function getProv() {
  let id_dep = document.getElementById("listDeparts").value;
  const url_base =
    "http://localhost/proyectoFarmacia/app/controller/ajaxController.php";
  let url = url_base + `?m=getProvinciasxIdHtml&id=${id_dep}`;

  fetch(url)
    .then((dato) => dato.text())
    .then((data) => {
      document.getElementById("listarDistritoss").innerHTML = data;
    });
}

document.getElementById("formulario-dist").addEventListener("submit", (e) => {
  e.preventDefault();
  const url_base =
    "http://localhost/proyectoFarmacia/app/controller/ajaxController.php";
  let url = url_base + `?m=addDistrito`;
  let datos = new FormData(document.getElementById("formulario-dist"));
  //alert(datos.get("provi"))
  console.log(datos.get("disti"));
  console.log(datos.get("provi"));
  fetch(url, {
    method: "POST",
    //headers: {
    //    'Content-Type': 'application/x-www-form-urlencoded'
    //},
    body: datos,
  })
    .then((res) => res.text())
    .then((res) => {
      if (res == "true") {
        document.getElementById("formulario-dist").reset();
        getDists();
      }
    });
});

document
  .getElementById("listarDistritoss")
  .addEventListener("change", getDists);
function getDists() {
  let id_prov = document.getElementById("listarDistritoss").value;
  const url_base =
    "http://localhost/proyectoFarmacia/app/controller/ajaxController.php";
  let url = url_base + `?m=getDistritosHtml&id=${id_prov}`;

  fetch(url)
    .then((datos) => datos.text())
    .then((datos) => {
      document.getElementById("tbody-distritos").innerHTML = datos;
    });
}

document.querySelector("#tabladist").addEventListener("click", (e) => {
  if (e.target.name == "eliminard") {
    const url_base =
      "http://localhost/proyectoFarmacia/app/controller/ajaxController.php";
    let url = url_base + `?m=deleteDistrito&id=${e.target.id}`;
    fetch(url)
      .then((res) => res.text())
      .then((res) => {
        if (res == "true") {
          getDists();
        }
      });
  }
});

document.querySelector("#tablaprovs").addEventListener("click", (e) => {
  if (e.target.name == "eliminarp") {
    const url_base =
      "http://localhost/proyectoFarmacia/app/controller/ajaxController.php";
    let url = url_base + `?m=deleteProvincia&id=${e.target.id}`;
    fetch(url)
      .then((res) => res.text())
      .then((res) => {
        if (res == "true") {
          tbodyProvincias2();
        }
      });
  }
});

function tbodyProvincias2() {
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
