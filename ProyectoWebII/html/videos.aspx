<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="videos.aspx.cs" Inherits="ProyectoWebII.html.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="../css/styleVideos.css">
    <meta charset="UTF-8">
     <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BLOOD OF GAMER</title>
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
                    <li class="menu__item"><a class="menu__link" href="resenas.aspx">Reseñas</a></li>
                    <li class="menu__item"><a class="menu__link select" href="videos.aspx">Videos</a></li>
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



        <main>
            <h2 class="section__titulo">-Videos-</h2>
            <div class="contenedor_v" id="video_cont">
                <iframe id="videoHallowen" width="560" height="315" src="https://www.youtube.com/embed/HIHB7r7TfwU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="contenidov">
                <h2 class="videot">Especial de Hallowen 🎃</h2>
                    <p class="textoVideos">Bienvenidos al especial de #Halloween, en esta ocasión les traemos los 6 mejores videojuegos de terror que para nosotros son los mejores, así que si quieres pasar por desesperación y angustia deberías de probar estos títulos.</p>
                </div>
            </div>

            <div class="contenedor_v" id="video_cont">
                <iframe id="videoLol" width="560" height="315" src="https://www.youtube.com/embed/itgAbmWKvXA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="contenidov">
                <h2 class="videot">Leyenda de Brand</h2>
                    <p class="textoVideos">Conoces la historia del campeón brand de lol, el lore de lol es algo que muchos no toman en cuenta, es algo que se nota que riot le ha invertido mucho tiempo y dedicación, tienen muy buenas historias, mira este video del campeón bran, te aseguro que te sorprenderá. </p>
                </div>
            </div>

            <div class="contenedor_v" id="video_cont">
                <iframe id="videoLol" width="560" height="315" src="https://www.youtube.com/embed/B0A2j3NEgyA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="contenidov">
                <h2 class="videot">Cosas que no sabias de Blodborne</h2>
                    <p class="textoVideos">Jugaste Blodborne y no entendiste que paso, si ya has jugado otros juegos del estudio From software sabe que sus historias y lore son cosas que necesitan de esfuerzo para encontrarla, blodborne es un juego lleno de secretos, lore y historias perdidas, basada en una mitología que ya es muy extraña por si sola, este video te dará algo de información del extraño mundo de blodborne.</p>
                </div>
            </div>
            <div class="contenedor_v" id="video_cont">
                <iframe id="videoLol" width="560" height="315" src="https://www.youtube.com/embed/eaSCKIDhesI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="contenidov">
                <h2 class="videot">Top de juegos de Mario</h2>
                    <p class="textoVideos">Mario el ídolo de varias generaciones, con juegos divertidos, mecánicas refinadas e incluso ha tenido historias muy buenas, este es top que toma lo mejor del fontanero e intenta sacar lo mejor, lo cual es una tarea titánica ya que la mayoría de juegos de Mario son de una calidad exquisita y un deleite para los gamers.</p>
                </div>
            </div>
            <div class="contenedor_v" id="video_cont">
                <iframe id="videoLol" width="560" height="315" src="https://www.youtube.com/embed/Nq8s2ysoVrE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="contenidov">
                <h2 class="videot">Micro Transas</h2>
                    <p class="textoVideos">Las micro transacciones son un problema que ya escalaron a un problema mayor, la mayoría de los juegos de los que la mayoría ya valen 60 dólares la tienen que esto para muchos ya es un precio alto, lo que es un problema a la comunidad, este video toca este tema y varios mas </p>
                </div>
            </div>
            <div class="contenedor_v" id="video_cont">
                <iframe id="videoLol" width="560" height="315" src="https://www.youtube.com/embed/sS68oWju7R8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="contenidov">
                <h2 class="videot">Juegos para la cuarentena</h2>
                    <p class="textoVideos">La cuarentena parece no acabar, lo que a muchos les ha dado mucho tiempo libre, que mejor forma de pasar ese tiempo con juegos, en el siguiente video te recomendamos seis para estos tiempos </p>
                </div>
            </div>


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

    <script src="../JS/Recursos.js"></script>
</body>
</html>
