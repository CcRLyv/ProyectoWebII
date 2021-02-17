<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resena.aspx.cs" Inherits="ProyectoWebII.html.resena" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/reseña.css">
    <link rel="stylesheet" href="../css/principal.css">
    <title>Resenia</title>
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
                     <li class="menu__item"><a class="menu__link" href="login.aspx">Login</a></li>

                </ul>
            </nav>
        </div>
    </header>

    <main>
        <article class="img_article">
            <img src="../img/zelda2.jpg" class="img_resenia">

            <div class="resenia__descripcion">
                <h2 class="circulo" id="calificacion"> 9.0</h2>
                <h2 class="resenia__titulo">THE LEGEND OF ZELDA </h2>
                <div class="resenia__txt">Una nueva aventura donde el increible Ganon vuelve a resucitar. Acaso tendra todo el poder con el cual eliminaras a todo el increible munod de Hyrule, los enemigos se sienten realmente capaces de derrocar la monarquia de Hyrule.</div>

            </div>

        </article>

        <article>
            <p class="resenia_p">Cuenta la leyenda que cuando Shigeru Miyamoto era un niño, su visión del mundo era sumamente creativa y fantasiosa —justo como lo demostró años más tarde—. En esa distante época, en las lejanas tierras de Kyoto, Japón, el pequeño salía a explorar
                los bosques, praderas y cavernas a las afueras de su hogar, mientras imaginaba que estaba descubriendo un mundo mágico, lleno de maravillas. Décadas más tarde esa emoción que sentía y su asombro por lo desconocido se transformaron hasta
                materializarse dentro de The Legend of Zelda, la saga cuya esencia ha trascendido generaciones al dejar que cada uno de nosotros, al igual que él, nos sumerjamos en una fantasía épica, misteriosa y sorprendente.</p>
            <p class="resenia_p">
                Darme el tiempo para recordar con nostalgia los orígenes de la franquicia no es mero capricho de fan, es fundamental para entender la identidad de Breath of the Wild y saber por qué Nintendo tomó tantas decisiones que, a simple vista, parecían un nuevo
                y arriesgado rumbo para The Legend of Zelda. Pero sobre todo es imprescindible para comprender el grandioso potencial que ha tenido la franquicia desde sus inicios. Desde los primeros minutos que experimentas esta nueva entrega, puedes
                notar las incontables analogías que existen con el primer juego para NES. Y es que aún si muchísimas cosas han cambiado desde la edad de los 8-bits, hay un elemento en el que ambos juegos, el original y este último, son extremadamente
                similares: en darnos libertad de explorar libremente —con restricciones mínimas— casi cada rincón de Hyrule desde el inicio, sin llevarte de la mano, poniendo a prueba los límites de tu habilidad e intelecto a cada paso, pero, sobre todo,
                desafiándote de principio a fin a intentar cosas nuevas. Es una aventura hacia lo desconocido que te provoca emoción y te maravilla incluso después de 30 o 50 horas de juego.
            </p>
        </article>
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
</body>
</html>
