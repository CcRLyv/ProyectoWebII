function validar(){
    var nombre,pass,correo,apellidos,telefono;
    nombre=document.getElementById("nombre").value;
    pass=document.getElementById("pass").value;
    correo=document.getElementById("correo").value;
    apellidos=document.getElementById("apellidos").value;
    telefono=document.getElementById("telefono").value;

    if(nombre ===""){
       alert("El campo Nombre de usuario esta vacío");
        return false;
       }


    if(pass ===""){
       alert("El campo contraseña esta vacío");
        return false;
       }


    if(correo ===""){
       alert("El campo correo esta vacío");
        return false;
       }


    if(apellidos ===""){
       alert("El campo apellidos esta vacío");
        return false;
       }


    if(telefono ===""){
       alert("El campo telefono esta vacío");
        return false;
       }


}
