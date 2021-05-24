<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoWebII.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="css/style_2.css">
     <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
       <script src="JS/scrollreveal.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BLOOD OF GAMER</title>
</head>
<body>
    <header class="header heder-an">
        <div class="contenedor">

            <h1 class="logo"> BLOOD OF GAMER</h1>
            <span class="icon-menu" id="btn-menu"></span>
            <nav class="nav" id="nav">
                <ul class="menu">
                    <li class="menu__item"><a class="menu__link select" href="Default.aspx">Inicio</a></li>
                    <li class="menu__item"><a class="menu__link" href="html/Noticias.aspx">Noticias</a></li>
                    <li class="menu__item"><a class="menu__link" href="html/articulos.aspx">Articulos</a></li>
                    <li class="menu__item"><a class="menu__link" href="html/resenas.aspx">Reseñas</a></li>
                    <li class="menu__item"><a class="menu__link" href="html/videos.aspx">Videos</a></li>
                    <li class="menu__item"><a class="menu__link" href="html/foroCat.aspx">Foros</a></li>
                    <% if (HttpContext.Current.Session["USUARIO"] != null)
                                 {%>
                        <li class="menu__item"><a class="menu__link" href="html/perfil.aspx">Perfil</a></li>
   

<%}
                                 else { %>
    
     <li class="menu__item"><a class="menu__link" href="html/login.aspx">Login</a></li>
    
    
    <%}%>            

                </ul>
            </nav>
        </div>
    </header>


    <div id="banner" class="banner-imagenes banner-estilo">
        <ul>

        <li><img src="img/1.jpg"><h2 id="descripcion_banner">Descubre los nuevos personajes de super smash bros que nintendo tiene para ti</h2></li>
        <li><img src="img/2.jpg"><h2 id="descripcion_banner">La nueva generacion de consolas esta con nosotros y Sony se une con su consola PS5</h2></li>
        <li> <img src="img/3.jpg"><h2 id="descripcion_banner">Microsoft sorprende al mundo con su nueva consola XBOX SERIES X</h2></li>
        </ul>
        </div>

    <div class="contenedor">
           <section class="cursos">
                <h2 class="section__titulo">―Destacados―</h2>
                <div class="cursos__columna col-1">
                    <img src="img/1.jpg" alt="" class="cursos__img">
                    <div class="cursos__descripcion">
                        <h2 class="cursos__titulo">SUPER SMASH BROS ULTIMATE </h2>
                        <div class="cursos__txt">Nuevos personajes se incluyen en el mundo de este video juego.</div>
                    </div>
                </div>
                <div class="cursos__columna  col-2">
                    <img src="img/3.jpg" alt="" class="cursos__img">
                    <div class="cursos__descripcion">
                        <h2 class="cursos__titulo">XBOX SERIES X</h2>
                        <div class="cursos__txt">La nueva generacion de microsoft esta aqui con esta nueva consola. </div>
                    </div>
                </div>
                <div class="cursos__columna col-3">
                    <img src="img/2.jpg" alt="" class="cursos__img">
                    <div class="cursos__descripcion">
                        <h2 class="cursos__titulo">PLAYSTATION 5</h2>
                        <div class="cursos__txt">Sony entra a la nueva generacion de consolas con su nuevo sistema mucho mas poderoso.</div>
                    </div>
                </div>
                <div class="cursos__columna col-4">
                    <img src="img/4.jpg" alt="" class="cursos__img">
                    <div class="cursos__descripcion">
                        <h2 class="cursos__titulo">WORLDS 2020 LOL</h2>
                        <div class="cursos__txt">El mundial de League Of Legends esta aqui descubre los equipos que buscaran la gloria</div>
                    </div>
                </div>
            </section>
        </div>
<div class="contenedor">
<h2 class="section__titulo">―Lo mas reciente―</h2>
    <ul class="Galeria">
    <li>
        <div class="contenedor_N">
        <img class="img_N" src="img/N_22.jpg">
            <h2 class="T_N">Recordando la saga "Kirby"</h2>
            <h4 class="info_n"> Esto es una prueba de como va a quedar xD</h4>
        </div>
        </li>
    <li>
        <div class="contenedor_N">
        <img class="img_N" src="img/N_1.jpg">
            <h2 class="T_N">Damwon se corona en Worlds 2020</h2>
            <h4 class="info_n"> El equipo surcoreano venció a Suning en la gran final.</h4>
        </div>
        </li>
    <li>
        <div class="contenedor_N">
        <img  class="img_N"src="img/N_3.jpg">
             <h2 class="T_N">Nintendo  Nintendogs</h2>
            <h4 class="info_n"> Antiguo gerente general de la compañía recuerda como la franquicia superó las expectativas de Nintendo.</h4>
        </div>
        </li>
    <li>
        <div class="contenedor_N">
        <img  class="img_N"src="img/N_2.jpg">
            <h2 class="T_N">Halo: MCC</h2>
            <h4 class="info_n"> 343i escuchará las peticiones de la comunidad para el futuro del juego</h4>
        </div>

        </li>
    <li>
        <div class="contenedor_N">
        <img  class="img_N"src="img/N_33.jpg">
            <h2 class="T_N">PlayStation 5 por menos de $10,000</h2>
            <h4 class="info_n"> Un error que ofreció varios productos en preventa a un precio muy atractivo</h4>
        </div>
        </li>
    <li>
        <div class="contenedor_N">
        <img  class="img_N"src="img/N_4.jpg">
            <h2 class="T_N">Acciones de CD Projekt RED</h2>
            <h4 class="info_n"> El retraso de Cyberpunk 2077 y polémicas del estudio generaron incertidumbre.</h4>
        </div>
        </li>
        <li>
        <div class="contenedor_N">
        <img  class="img_N"src="img/N_5.jpg">
            <h2 class="T_N">Aplicación de Pokémon​ 2021</h2>
            <h4 class="info_n"> La publicación revela interesantes planes para celebrar el 25.º aniversario de la serie</h4>
        </div>
        </li>
        <li>
        <div class="contenedor_N">
        <img  class="img_N"src="img/N_6.jpg">
            <h2 class="T_N">BioWare preparan un evento</h2>
            <h4 class="info_n"> Miembros creativos y actores de voz de la serie celebrarán con los fans el Día N7</h4>
        </div>
        </li>
        <li>
        <div class="contenedor_N">
        <img  class="img_N"src="img/N_7.jpg">
            <h2 class="T_N">PlayStation VR</h2>
            <h4 class="info_n"> Los usuarios podrán disfrutar la realidad virtual únicamente con los juegos de PlayStation 4</h4>
        </div>
        </li>

    </ul>
    </div>

    <button type="button" class="leer_noticias" value="Leer mas noticias" onclick="html/noticias.html"><a href="html/Noticias.php">Leer mas noticias</a></button>

    <h2 class="section__titulo">―Ultimo video―</h2>
    <div class="contenedor_v" id="video_cont">
   <iframe id="video" width="560" height="315" src="https://www.youtube.com/embed/HIHB7r7TfwU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <div class="contenidov">
        <h2 class="videot">Especial de Hallowen 🎃</h2>
        <p class="textov">Bienvenidos al especial de #Halloween, en esta ocasión les traemos los 6 mejores videojuegos de terror que para nosotros son los mejores, así que si quieres pasar por desesperación y angustia deberías de probar estos títulos.</p>
            <button type="button" class="leer_noticias" id="botonv" value="Ver mas videos"><a href="html/videos.php">Ver mas videos</a></button>
            </div>
    </div>
 <h2 class="section__titulo">―Reseñas―</h2>

<main>

        <article>
            <img src="img/5.jpg" class="imagen_resenia">
            <div class="resenia__descripcion">
                <h2 class="resenia__titulo">THE LEGEND OF ZELDA </h2>
                <h2 class="circulo" id="calificacion"> <br> 9.0</h2>
                <div class="resenia__txt">Una nueva aventura donde el increible Ganon vuelve a resucitar.</div>
            </div>
        </article>

        <article>
            <img src="img/1.jpg" class="imagen_resenia">
            <div class="resenia__descripcion">
                <h2 class="resenia__titulo">SUPER SMASH BROS ULTIMATE </h2>
                <h2 class="circulo" id="calificacion"> <br> 8.6</h2>
                <div class="resenia__txt">Nuevos personajes se incluyen en el mundo de este video juego.</div>
            </div>
        </article>
        <article>
            <img src="img/6.jpg" class="imagen_resenia">
            <div class="resenia__descripcion">
                <h2 class="resenia__titulo">DARK SOULS 3</h2>
                <h2 class="circulo" id="calificacion"> <br> 10</h2>
                <div class="resenia__txt">Preparate para sentir una masacre mas alta de todo los juegos.</div>
            </div>
        </article>
    <button type="button" class="leer_noticias" id="btnresenas" value="Leer mas reseñas">
    <a href="html/resenas.php">Leer mas reseñas</a></button>
    </main>

     <footer class="footer">
        <div class="contenedor">
            <div class="social">
                <a href="https://www.facebook.com/Bloodofgamermx-108232427492486/" class="icon-facebook"></a>
                <a href="https://twitter.com/BloodOfGamerMX" class="icon-twitter"></a>

            </div>
            <p class="copy">&copy; BLOOD OF GAMER </p>
        </div>
         </footer>
    <script src="JS/push.min.js"></script>
    <script src="JS/Recursos.js"></script>
    <script src="JS/index.js"></script> 
    
</body>
</html>
