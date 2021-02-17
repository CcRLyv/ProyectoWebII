<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Noticias.aspx.cs" Inherits="ProyectoWebII.html.Noticias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <link rel="stylesheet" href="../css/styleNoticias.css">
    <link rel="stylesheet" href="../css/styleNoticias2.css">

    <meta charset="UTF-8">
     <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noticias</title>
</head>
<body>
   
    <header class="header">
        <div class="contenedor">
            <h1 class="logo"> BLOOD OF GAMER</h1>
            <span class="icon-menu" id="btn-menu"></span>
            <nav class="nav" id="nav">
                <ul class="menu">
                 <li class="menu__item"><a class="menu__link " href="../Default.aspx">Inicio</a></li>
                    <li class="menu__item"><a class="menu__link select" href="Noticias.aspx">Noticias</a></li>
                    <li class="menu__item"><a class="menu__link" href="articulos.aspx">Articulos</a></li>
                    <li class="menu__item"><a class="menu__link" href="resenas.aspx">Reseñas</a></li>
                    <li class="menu__item"><a class="menu__link " href="videos.aspx">Videos</a></li>
                    <li class="menu__item"><a class="menu__link" href="foroCat.aspx">Foros</a></li>              
                            <li class="menu__item"><a class="menu__link" href="login.aspx">Login</a></li>

                </ul>
            </nav>
        </div>
    </header>
    <main>
        <h2 class="section__titulo">Noticias</h2>
        <article>
            <img src="../img/N_7.jpg"class="img_izq" ></a>
            <div>
                <a class="article_titulo" href="ArticulosDeNoticias/Noticia_8_PlaystationVr.php">
                    PlaytationVR
                </a>
                <p class="article_texto">Miembros creativos y actore...</p>
            </div>
        </article>
        <article>
            <img src="../img/N_1.png" class="img_izq"></a>
            <div>
                <a class="article_titulo" href="ArticulosDeNoticias/Noticia_1_Worlds%202020.php">
                    Damwon se corona en Worlds 2020
                </a>
                <p class="article_texto">El equipo surcoreano venció a Suning en la gran final.</p>
            </div>
        </article>
        <article>
            <img src="../img/N_3.jpg" class="img_izq" ></a>
            <div>
                <a class="article_titulo" href="ArticulosDeNoticias/Noticia_4_nintendoDogs.php">
                    Nintendo Nintendogs
                </a>
                <p class="article_texto">Antiguo gerente general de la compañía recuerda como ...</p>
            </div>
        </article>
        <article>
            <img src="../img/N_2.jpg"class="img_izq" ></a>
            <div>
                <a class="article_titulo" href="ArticulosDeNoticias/Noticia_3_HaloMCC.php">
                    Halo: MCC
                </a>
                <p class="article_texto">343i escuchará las peticiones de la comunidad para el futuro del juego</p>
            </div>
        </article>
        <article>
            <img src="../img/N_33.jpg"class="img_izq" ></a>
            <div>
                <a class="article_titulo" href="ArticulosDeNoticias/Noticia_2_MexioPlastation.php">
                    PlayStation 5 por menos de $10,000
                </a>
                <p class="article_texto">Un error que ofreció varios productos en ...</p>
            </div>
        </article>
        <article>
            <img src="../img/N_4.jpg"class="img_izq" ></a>
            <div>
                <a class="article_titulo" href="ArticulosDeNoticias/Noticia_6_CD_proyectAciones.php">
                    Acciones de CD Projekt RED
                    </a>
                <p class="article_texto">El retraso de Cyberpunk 2077 y polémica ...</p>
            </div>
        </article>
        <article>
            <img src="../img/N_5.jpg"class="img_izq" ></a>
            <div>
                <a class="article_titulo" href="ArticulosDeNoticias/Noticia_5_AplicacionesDomingo.php">
                    Aplicación de Pokémon​ 2021
                    </a>
                <p class="article_texto">ELa publicación revela interesante ...</p>
            </div>
        </article>
        <article>
            <img src="../img/N_6.jpg"class="img_izq" ></a>
            <div>
                <a class="article_titulo" href="ArticulosDeNoticias/Noticia_7_BiowareMassEfect.php">
                    BioWare preparan un evento
                </a>
                <p class="article_texto">Miembros creativos y actore...</p>
            </div>
        </article>
    </main>
    <aside class="contenido_resenia_izquierdo">
        <h2 class="section__titulo">Lo mas comentado</h2>
        <nav class="Articulos_izq">
            <img src="../img/N_2.jpg" class="img_izq">
            <div class="resenia__descripcion">
                <h2 class="resenia__titulo">Halo: MCC
                    343i escuchará las peticiones de la comunidad para el futuro del juego </h2>
            </div>

        </nav>

        <nav class="Articulos_izq">
            <img src="../img/N_1.jpg" class="img_izq">
            <div class="resenia__descripcion">
                <h2 class="resenia__titulo">Damwon se corona en Worlds 2020 </h2>

            </div>

        </nav>
        <nav class="Articulos_izq">
            <img src="../img/N_22.jpg" class="img_izq">
            <div class="resenia__descripcion">
                <h2 class="resenia__titulo">Kirby Recordando la saga "Kirby" </h2>
            </div>

        </nav>

    </aside>
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
