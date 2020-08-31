let dep = document.getElementById("dep");
let prov = document.getElementById("prov");
let dist = document.getElementById("dist");

dep.addEventListener("change", () => {
  let valor = document.getElementById("dep").value;
  if (valor != "") {
    let dat = `m=getProvincias&id=${valor}`;
    prov.innerHTML = "<option value=''>Seleccione Provincia...</option>";
    dist.innerHTML = "<option value=''>Seleccione Distrito</option>";
    request(dat, "provincias");
  } else {
    prov.innerHTML = "<option value=''>Seleccione Provincia</option>";
    dist.innerHTML = "<option value=''>Seleccione Distrito</option>";
  }
});

prov.addEventListener("change", () => {
  let val = document.getElementById("prov").value;
  if (val != "") {
    let dat = `m=getDistritos&id=${val}`;
    dist.innerHTML = "<option value=''>Seleccione Distrito...</option>";
    request(dat, "distritos");
  } else {
    dist.innerHTML = "<option value=''>Seleccione Distrito</option>";
  }
});

function request(link, select) {
  var ajaxrequest = new XMLHttpRequest();
  const url_base =
    "http://localhost/proyectoFarmacia/app/controller/ajaxController.php";
  let url = url_base + `?${link}`;

  ajaxrequest.open("GET", url, true);
  ajaxrequest.send();

  ajaxrequest.onreadystatechange = () => {
    if (ajaxrequest.readyState == 4 && ajaxrequest.status == 200) {
      let datos = JSON.parse(ajaxrequest.responseText);
      if (select == "provincias") {
        for (const key in datos.provincias) {
          var option = document.createElement("option");
          option.value = datos.provincias[key].id_provincia;
          option.text = datos.provincias[key].nombre;
          prov.appendChild(option);
        }
      } else if (select == "distritos") {
        for (const key in datos.distritos) {
          var option2 = document.createElement("option");
          option2.value = datos.distritos[key].id_distrito;
          option2.text = datos.distritos[key].nombre;
          dist.appendChild(option2);
        }
      }
    }
  };
}
