<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resenas.aspx.cs" Inherits="ProyectoWebII.html.resenas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="../css/principal.css">
    <link rel="stylesheet" href="../css/styleReseña.css">
    <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resenias</title>
</head>
<body>
     <header class="header">
        <div class="contenedor">
            <h1 class="logo"> BLOOD OF GAMER</h1>
            <span class="icon-menu" id="btn-menu"></span>
            <nav class="nav" id="nav">
                <ul class="menu">
                    <li class="menu__item"><a class="menu__link " href="../Default.aspx">Inicio</a></li>
                    <li class="menu__item"><a class="menu__link" href="Noticias.aspx">Noticias</a></li>
                    <li class="menu__item"><a class="menu__link" href="articulos.aspx">Articulos</a></li>
                    <li class="menu__item"><a class="menu__link select" href="resenas.aspx">Reseñas</a></li>
                    <li class="menu__item"><a class="menu__link " href="videos.aspx">Videos</a></li>
                    <li class="menu__item"><a class="menu__link" href="foroCat.aspx">Foros</a></li>
                 
                    <% if (HttpContext.Current.Session["USUARIO"] != null)
                                 {%>
                        <li class="menu__item"><a class="menu__link" href="perfil.aspx">Perfil</a></li>
   

<%}
                                 else { %>
    
     <li class="menu__item"><a class="menu__link" href="login.aspx">Login</a></li>
    
    
    <%}%>


                </ul>
            </nav>
        </div>
    </header>



    <main id= "capa">

        <h2 class="section__titulo">Reseñas</h2>
        <a href="resena.php">
            <article>
                <img src="../img/5.jpg" class="imagen_resenia">
                <div class="resenia__descripcion">
                    <h2 class="resenia__titulo">THE LEGEND OF ZELDA </h2>
                    <h2 class="circulo" id="calificacion"> 9.0</h2>
                    <div class="resenia__txt">Una nueva aventura donde el increible Ganon vuelve a resucitar.</div>
                </div>
            </article>
        </a>

        <a href="resena.php">
            <article>
                <img src="../img/1.jpg" class="imagen_resenia">
                <div class="resenia__descripcion">
                    <h2 class="resenia__titulo">SUPER SMASH BROS ULTIMATE </h2>
                    <h2 class="circulo" id="calificacion"> 8.6</h2>
                    <div class="resenia__txt">Nuevos personajes se incluyen en el mundo de este video juego.</div>
                </div>
            </article>
        </a>

        <a href="resena.php">
            <article>
                <img src="../img/6.jpg" class="imagen_resenia">
                <div class="resenia__descripcion">
                    <h2 class="resenia__titulo">DARK SOULS 3</h2>
                    <h2 class="circulo" id="calificacion"> 10</h2>
                    <div class="resenia__txt">Preparate para sentir una masacre mas alta de todo los juegos.</div>
                </div>
            </article>
        </a>

        <a href="resena.php">
            <article>
                <img src="../img/5.jpg" class="imagen_resenia">
                <div class="resenia__descripcion">
                    <h2 class="resenia__titulo">THE LEGEND OF ZELDA </h2>
                    <h2 class="circulo" id="calificacion"> 9.0</h2>
                    <div class="resenia__txt">Una nueva aventura donde el increible Ganon vuelve a resucitar.</div>
                </div>
            </article>
        </a>

        <a href="resena.php">
            <article>
                <img src="../img/5.jpg" class="imagen_resenia">
                <div class="resenia__descripcion">
                    <h2 class="resenia__titulo">THE LEGEND OF ZELDA </h2>
                    <h2 class="circulo" id="calificacion"> 9.0</h2>
                    <div class="resenia__txt">Una nueva aventura donde el increible Ganon vuelve a resucitar.</div>
                </div>
            </article>
        </a>
        <a href="resena.php">
            <article>
                <img src="../img/5.jpg" class="imagen_resenia">
                <div class="resenia__descripcion">
                    <h2 class="resenia__titulo">THE LEGEND OF ZELDA </h2>
                    <h2 class="circulo" id="calificacion"> 9.0</h2>
                    <div class="resenia__txt">Una nueva aventura donde el increible Ganon vuelve a resucitar.</div>
                </div>
            </article>
        </a>



     

       
    </main>
  
   


    <aside class="contenido_resenia_izquierdo">
        <h2 class="section__titulo">Mejores</h2>
        <nav class="Articulos_izq">
            <img src="../img/6.jpg" class="img_izq">
            <div class="resenia__descripcion">
                <h2 class="resenia__titulo">DARK SOULS </h2>
                <h2 class="circulo_izq" id="calificacion"> 10</h2>
            </div>

        </nav>

        <nav class="Articulos_izq">
            <img src="../img/5.jpg" class="img_izq">
            <div class="resenia__descripcion">
                <h2 class="resenia__titulo">THE LEGEND OF ZELDA </h2>
                <h2 class="circulo_izq" id="calificacion"> 10</h2>
            </div>

        </nav>
        <nav class="Articulos_izq">
            <img src="../img/kirby.jpg" class="img_izq">
            <div class="resenia__descripcion">
                <h2 class="resenia__titulo">Kirby </h2>
                <h2 class="circulo_izq" id="calificacion"> 10</h2>
            </div>

        </nav>

    </aside>
    <input type="button" class="leer_noticias" id="btnresenas" value="Leer mas reseñas"
        onclick="addElemento();" id="botonMas">

    <footer class="footer">
        <div class="contenedor">
            <div class="social">
                <a href="https://www.facebook.com/Bloodofgamermx-108232427492486/" class="icon-facebook"></a>
                <a href="https://twitter.com/BloodOfGamerMX" class="icon-twitter"></a>

            </div>
            <p class="copy">&copy; BLOOD OF GAMER </p>
        </div>
    </footer>

    <script src="../JS/Recursos.js"></script>
    <script src="../JS/cargar.js"></script>
   
</body>
</html>
