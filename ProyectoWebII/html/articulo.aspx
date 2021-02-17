<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="articulo.aspx.cs" Inherits="ProyectoWebII.html.articulo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="../css/articulo.css">
        <meta charset="UTF-8">
         <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Articulo</title>
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
                    <li class="menu__item"><a class="menu__link select" href="articulos.aspx">Articulos</a></li>
                    <li class="menu__item"><a class="menu__link" href="resenas.aspx">Reseñas</a></li>
                    <li class="menu__item"><a class="menu__link " href="videos.aspx">Videos</a></li>
                    <li class="menu__item"><a class="menu__link" href="foroCat.aspx">Foros</a></li>
                     <li class="menu__item"><a class="menu__link" href="login.aspx">Login</a></li>


                    </ul>
                </nav>
            </div>
        </header>
        <div class="portada">
            <img src="../img/portadaArticulo.jpg">
            <div class="texto-encima"><h1>El Warson anda grátis, agárralo en corto.</h1></div>
            <p class="fecha">Jueves 28 de octubre del 2020</p>
        </div>
        <div class="user_left">
            <a href=""><img src="../img/7.jpg" class="imagen_editor" alt="@Usuario" width="50px" height="50px"></a>
            <p class="nombre_editor">Giogen Dominguez</p>
            <a class="twitter_editor" href="">@Gioen</a>
        </div>
        <main>
            <h2>Lo más popular</h2>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsam, beatae accusantium. Perspiciatis odit aliquam saepe tempora consectetur, voluptatibus dolore esse facere impedit molestiae autem, fugit sint quod alias placeat dicta?</p>
            <h2>Está bien chido</h2>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsam, beatae accusantium. Perspiciatis odit aliquam saepe tempora consectetur, voluptatibus dolore esse facere impedit molestiae autem, fugit sint quod alias placeat dicta?</p>
            <img src="../img/cod.jpg">
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laudantium modi alias adipisci dicta sunt quo, omnis dolores aliquam dignissimos unde tempora accusantium vel esse eum perferendis veritatis libero! Aliquam, harum.</p>
            <h2>Pasa tu user para echar partida</h2>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsam, beatae accusantium. Perspiciatis odit aliquam saepe tempora consectetur, voluptatibus dolore esse facere impedit molestiae autem, fugit sint quod alias placeat dicta?</p>
        </main>
        <aside>
            <h2>Aquí van los anuncios.</h2>
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
     <script src="../Recursos.js"></script>
</body>
</html>
