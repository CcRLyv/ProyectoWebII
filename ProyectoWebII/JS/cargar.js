function addElemento() {
    var capa = document.getElementById("capa");
    var articulo = document.createElement("article");
    var img = document.createElement("img");
    var div = document.createElement("div");
    var h2 = document.createElement("h2");
    var h2C = document.createElement("h2");
    var divRe = document.createElement("div");


    img.src = "../img/5.jpg";
    img.className = "imagen_resenia";

    div.className = "resenia__descripcion";

    h2.className = "resenia__titulo";
    h2.textContent = "Sauron";

    h2C.className = "circulo";
    h2C.id = "calificacion";
    h2C.textContent = "9.0";

    divRe.className = "resenia__txt";

    divRe.textContent = "Sauron es un juego que la neta no se que estoy haciendo, ya ve a dormir";


    articulo.appendChild(img);
    capa.appendChild(articulo);
    articulo.appendChild(div);
    div.appendChild(h2);
    div.appendChild(h2C);
    div.appendChild(divRe);



}