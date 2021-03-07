<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Articulo_nuevo.aspx.cs" Inherits="ProyectoWebII.html.Articulo_nuevo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="../css/articulos.css">
         <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Articulo</title>
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

        <asp:Label ID="Label1" runat="server" Text="Titulo"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="604px"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Contenido"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="308px" Width="648px"></asp:TextBox>

    
         
     
        <br />
        <asp:Label ID="Label3" runat="server" Text="Imagen"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />

    
         
     
        <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Crear Articulo" />

    </form>



    

     

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
</body>
</html>
