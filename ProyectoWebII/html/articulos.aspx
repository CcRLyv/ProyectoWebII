<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="articulos.aspx.cs" Inherits="ProyectoWebII.html.articulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <link rel="stylesheet" href="../css/articulos.css">
         <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Articulo</title>
</head>
<body>
     <form id="form1" runat="server">
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
        <main>
            
            <div id = "container">
                <h2 class="section__titulo">Artículos</h2>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                <article>
                    <a title="Smach" href="articulo.aspx"><img src="../img/7.jpg" ></a>
                    <div>
                        <a class="article_titulo" href="articulo.php">
                            #ViernesRetro: El Smash anda barato
                        </a>
                        <p class="article_texto">El Smach anda barato, cómpralo en corto.</p>
                        <p class="fecha">31/10/2020</p>
                    </div>
                </article>
                </div>
            <input type="button" class="leer_noticias" value="Nuevo articulo"> <br />
            
            <input type="button" class="leer_noticias" value="Más artículos" onclick="addElemento();">
        </main>

        <aside>
            <h2 class="section__titulo">Lo más popular</h2>
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
    <script src="../JS/cargarArticulos.js"></script>
     </form>
    </body>
   
</html>
