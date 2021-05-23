<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="foroPc.aspx.cs" Inherits="ProyectoWebII.html.foroPc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="../css/forosUsuarios.css">
    <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foro PC</title>
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
        <h2 class="section__titulo">FOROS</h2>

        <?php
   
   require '../datos/conexion.php';

     
    $query = mysqli_query($conectar,"SELECT * FROM foros where categoria='pc'");

       <div id = container>
             <article>
                 <a title=$Titulo href=foro.php?variable1=$ID><img src=../img/PC.png ></a>
                 <div>
                     <a class=article_titulo href=foro.php?variable1=$ID>
                         $Titulo
                     </a>
                     <p class=fecha>$Fecha</p>
                 </div>
             </article>
             </div>";

     
        
                  
                    <?php  if($_SESSION==true){
                       ?>
        <a href="nuevoForo.php"><input type="button" class="leer_noticias" value="Agregar Foro"></a>
           <?php } ?>
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
