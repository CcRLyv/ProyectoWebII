<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="foroCat.aspx.cs" Inherits="ProyectoWebII.html.foroCat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/foro.css">
    <link rel="stylesheet" href="../css/principal.css">
    <title>Foro Categoria</title>
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
                    <li class="menu__item"><a class="menu__link " href="videos.aspx">Videos</a></li>
                    <li class="menu__item"><a class="menu__link select" href="foroCat.aspx">Foros</a></li>
                    <li class="menu__item"><a class="menu__link" href="login.aspx">Login</a></li>

                </ul>
            </nav>
        </div>
    </header>
    <h2 class="titulo">CATEGORIAS</h2>


    <main>
        <article>

            <a href="forosUsu.aspx"><img src="../img/Nintendo.jpg"></a>
            <div class="foro__descripcion">
                <h2 class="foro__titulo">Nintendo</h2>
                <div class="foro__txt">Enterate de lo que piensan las personas respecto al mundo de Nintendo.</div>
            </div>
        </article>
        <article>

            <a href="foroXbox.aspx"><img src="../img/XBOX.png"></a>
            <div class="foro__descripcion">
                <h2 class="foro__titulo">XBOX</h2>
                <div class="foro__txt">Enterate de lo que piensan las personas respecto al mundo de Xbox.</div>
            </div>
        </article>
        <article>

            <a href="foroPs.aspx"><img src="../img/Play.jpg"></a>
            <div class="foro__descripcion">
                <h2 class="foro__titulo">Playstation</h2>
                <div class="foro__txt">Enterate de lo que piensan las personas respecto al mundo de Playstation.</div>
            </div>
        </article>
        <article>
            <a href="foroPc.aspx"><img src="../img/PC.png"></a>
            <div class="foro__descripcion">
                <h2 class="foro__titulo">PC</h2>
                <div class="foro__txt">Enterate de lo que piensan las personas respecto al mundo de PC.</div>
            </div>
        </article>

    </main>


              <a href="nuevoForo.aspx"> <input type="button" class="btn_agregar" id="btnresenas" value="Agregar Foro"></a>
                    





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
