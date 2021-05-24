<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="ProyectoWebII.html.perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="../css/Estilos2.css">
    <meta charset="UTF-8">
     <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>
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
                    <li class="menu__item"><a class="menu__link" href="resenas.apsx">Reseñas</a></li>
                    <li class="menu__item"><a class="menu__link" href="videos.aspx">Videos</a></li>
                    <li class="menu__item"><a class="menu__link" href="foroCat.aspx">Foros</a></li>
                    <li class="menu__item"><a class="menu__link select" href="perfil.aspx">Perfil</a></li>
                </ul>
            </nav>
        </div>
    </header>
       

            <div class="contenedor_login">

            <img src="../img/LogoSinFondo.png" id="logologin">
         <img src="../img/linea.jpg" id="linea">



    <div class="perfil" id="info_usuario">

        <p>Nombre de usuario: 
            <asp:Label ID="lbNombre" runat="server" Text="Label"></asp:Label>
        </p> <br>
        <p> Correo: 
            <asp:Label ID="lbCorreo" runat="server" Text="Label"></asp:Label>
        </p><br>
        <p>Apellidos:<asp:Label ID="lbApell" runat="server" Text="Label"></asp:Label>
        </p><br>
        <p>Telefono: 
            <asp:Label ID="lbTel" runat="server" Text="Label"></asp:Label>
        </p> <br>


    </div>
       
    </div>

      

    <form id="form1" runat="server">
       <asp:button runat="server"  class="leer_noticias " id="btncerrar"  Text="Cerrar" value="Cerrar" OnClick="btncerrar_Click"/>

           </form>

     <footer class="footer"> 
            <div class="social">
                <a href="https://www.facebook.com/Bloodofgamermx-108232427492486/" class="icon-facebook"></a>
                <a href="https://twitter.com/BloodOfGamerMX" class="icon-twitter"></a>

            </div>
            <p class="copy">&copy; BLOOD OF GAMER </p>
        
    </footer>
    <script src="../JS/Recursos.js"></script>

   

</body>
</html>
