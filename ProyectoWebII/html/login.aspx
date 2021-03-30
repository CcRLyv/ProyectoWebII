<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProyectoWebII.html.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="../css/Estilos2.css">
    <meta charset="UTF-8">
     <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar sesion</title>
</head>
<body>
    <header class="header">
        <div class="contenedor">
             
            <h1 class="logo"> BLOOD OF  GAMER</h1>
            <span class="icon-menu" id="btn-menu"></span>
            <nav class="nav" id="nav">
                <ul class="menu">
                     <li class="menu__item"><a class="menu__link " href="../Default.aspx">Inicio</a></li>
                    <li class="menu__item"><a class="menu__link" href="Noticias.aspx">Noticias</a></li>
                    <li class="menu__item"><a class="menu__link" href="articulos.aspx">Articulos</a></li>
                    <li class="menu__item"><a class="menu__link" href="resenas.aspx">Reseñas</a></li>
                    <li class="menu__item"><a class="menu__link" href="videos.aspx">Videos</a></li>
                    <li class="menu__item"><a class="menu__link" href="foroCat.aspx">Foros</a></li>
                    <li class="menu__item"><a class="menu__link select" href="login.aspx">Login</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="contenedor_login">
        <img src="../img/LogoSinFondo.png" id="logologin">
         <img src="../img/linea.jpg" id="linea">
        <form id="formulario" runat="server">
        <h2 id="titulo_login">Inicia sesión</h2>

            <asp:TextBox ID="name" runat="server"  placeholder="Nombre de Usuario"></asp:TextBox>
            <asp:TextBox ID="pass" runat="server" placeholder="Contraseña"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    
            
    
    
    <a id="referencia" href="Registro.aspx">Registrate</a>

        </form>





    </div>

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
