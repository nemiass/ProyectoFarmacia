
// TODO:::::::

function requestCarritoController(id) {
    const ajaxrequest = new XMLHttpRequest();
    let idc = id;
    let url = `http://localhost/proyectoFarmacia/app/controller/CarritoController.php?id=${idc}`;

    ajaxrequest.open('GET', url, true);

    //ajaxrequest.setajaxrequestuestHeader('Content-Type', 'application/x-www-form-urlencoded');

    ajaxrequest.onreadystatechange = function () {
        if(ajaxrequest.readyState == 4 && ajaxrequest.status == 200) {
            
            let datos = ajaxrequest.responseText;
            console.log(datos)
        }
    };
    ajaxrequest.send();
};

