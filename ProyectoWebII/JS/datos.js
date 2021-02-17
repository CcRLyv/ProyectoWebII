var getDatos = function () {
var correo = document.getElementById("correo").value;
var nombre = document.getElementById("nombre").value;
var Apellidos = document.getElementById("Apellidos").value;
var Telefono = document.getElementById("Telefono").value;
     if(nombre==""){
            alert("No se pudo puto");
        }

     if(correo==""){
        document.getElementById("correo").focus();

    }else{

        validarEmail(correo);
    }


    if(Apellidos==""){
            document.getElementById("Apellidos").focus();
    }

    if(Telefono==""){
            document.getElementById("Telefono").focus();
            }



function validarapellido(valor) {
    if (/^[a-zA-Z ]+$/.test(valor)){
     alert("El Apellido " + valor + " es correcta!.");
    } else {
     alert("El apellido es incorrecto!.");
    }
  }

  function validarEmail(valor) {
    if (/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(valor)){
     alert("La dirección de email " + valor + " es correcta!.");
    } else {
     alert("La dirección de email es incorrecta!.");
    }
  }

}

