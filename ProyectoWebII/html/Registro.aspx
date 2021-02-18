<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoWebII.html.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="../css/Estilos2.css">
    <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrate</title>
    <script src="../JS/validar.js"></script>
    <style>
    .error {
        color: #FF0000;
    }
    </style>
    <title>Registro</title>
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
                    <li class="menu__item"><a class="menu__link" href="foroCat.aspx">Foros</a></li>
                    <li class="menu__item"><a class="menu__link select" href="login.aspx">Login</a></li>



                </ul>
            </nav>
        </div>
    </header>
    <div class="contenedor_login">
        <img src="../img/LogoSinFondo.png" id="logologin">
        <img src="../img/linea.jpg" id="linea">





        <form method="post" action="Registro.php" id="formulario">
            <h2 id="titulo_login">Registro</h2>

            <input type="text" name="nombre" placeholder="Nombre de usuario" id="txtCorreo">
            <input type="text" name="pass" placeholder="Contraseña" id="txtPass">
            <input type="text" name="correo" placeholder="correo" id="txtNombre">
            <input type="text" name="apellidos" placeholder="Apellidos" id="txtApellidos">
            <input type="text" name="telefono" placeholder="Telefono" id="txtTelefono">

            <button type="submit" class="leer_noticias" id="btnresenas">Registrar</button>


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
    <script src="../JS/datos.js"></script>
    <script src="../JS/Recursos.js"></script>
</body>
</html>
