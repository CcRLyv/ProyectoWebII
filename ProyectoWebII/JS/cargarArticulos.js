function addElemento (){
    var capa = document.getElementById("container");
    var articulo = document.createElement("article");
    var aImg = document.createElement("a");
    var img = document.createElement("img");
    var div = document.createElement("div");
    var a = document.createElement("a");
    var pArticle = document.createElement("p");
    var pfecha = document.createElement("p");

    aImg.title = "Smach";
    aImg.href = "articulo.php";

    img.src = "../img/7.jpg";

    a.className = "article_titulo";
    a.href = "articulo.php";
    a.textContent = "#ViernesRetro: El Smash anda barato agregado";

    pArticle.className = "article_texto";
    pArticle.textContent = "Holi holi holi holi holi holi holi holi holi holi holi holi";

    pfecha.className = "fecha";
    pfecha.textContent = "31/10/2020";


    capa.appendChild(articulo);
    articulo.appendChild(aImg);
    aImg.appendChild(img);
    articulo.appendChild(div);
    div.appendChild(a);
    div.appendChild(pArticle);
    div.appendChild(pfecha);
}