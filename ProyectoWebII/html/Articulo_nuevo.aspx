<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Articulo_nuevo.aspx.cs" Inherits="ProyectoWebII.html.Articulo_nuevo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="../css/articulos.css" rel="stylesheet"  type="text/css">
         <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Articulo</title>
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
      <form id="form1" runat="server">
        <div CssClass="contenido-titulo alineacion">
        <asp:Label class="h2"  ID="Label1" runat="server" Text="Titulo" CssClass="MiLabel alineacion2 h2"></asp:Label>
                <asp:TextBox class="form-control" ID="TextBox1" runat="server" Width="604px" CssClass="MiLabel alineacion2"></asp:TextBox>
                

            <div CssClass="xd" >
                <asp:Label ID="Label4" runat="server" Text="Indentificador" CssClass="centrarBotton2 h2"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="centrarBotton2" Width="337px"></asp:TextBox>
                </div>
                
                    <asp:Label   ID="Label2" runat="server" Text="Contenido" CssClass="MiLabel alineacion2 h2"></asp:Label>

                <asp:TextBox class="form-control" ID="TextBox2"  runat="server" Height="308px" Width="648px" OnTextChanged="TextBox2_TextChanged" CssClass="MiLabel alineacion2" TextMode="MultiLine"></asp:TextBox>

         </div>
         
     
        <br />
        <asp:Label  ID="Label3" runat="server" Text="Imagen" CssClass="MiLabel centrarBotton2 h2"></asp:Label>
        <asp:FileUpload for="formFile" class="form-label" ID="FileUpload1" runat="server" CssClass="btn btn-outline-primary centrarBotton2" />

    
         
     
        <br />
&nbsp;<asp:Button  ID="Button1" runat="server" OnClick="Button1_Click" Text="Crear Articulo" CssClass="btn btn-outline-success centrarBotton" />

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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
     <script src="JS/push.min.js"></script>
    <script src="../Recursos.js"></script>
</body>
</html>
