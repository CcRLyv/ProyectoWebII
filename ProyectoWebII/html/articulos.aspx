<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="articulos.aspx.cs" Inherits="ProyectoWebII.html.articulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <link rel="stylesheet" href="../css/articulos.css">
         <link href="https://file.myfontastic.com/Nn5TSPRUBW8ownLj5YNeV6/icons.css" rel="stylesheet">
                   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <meta charset="UTF-8">
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
     <form id="form1" runat="server">
        <main>
        
            <div  class="alineacion3"><asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                <h2 class="section__titulo">Artículos
                </h2>
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                          <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered ">
                          </asp:GridView>
                           <asp:Button ID="Button1"   runat ="server" CssClass="btn btn-outline-success" Text="Agregar" OnClick="Button1_Click"   />
                          &nbsp;<asp:Button ID="btnRef" runat="server" CssClass="btn btn-outline-success" OnClick="btnRef_Click" Text="Refrescar" />
                <br />
                <div class="ajuste">
                <asp:Label ID="Label1" runat="server" Text="Eliminar(Por ID):" CssClass="h4"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="194px" CssClass="form-control"></asp:TextBox>
                <asp:Button ID="btnElim" runat="server" OnClick="btnElim_Click" Text="Eliminar" CssClass="btn btn-outline-danger" /> <br />
                <br />
                 </div>
                           <div class="ajuste">
                <asp:Label ID="Label2" runat="server" Text="Buscar(Por Titulo):" CssClass="h4"></asp:Label>
                <asp:TextBox ID="tbBuscar" runat="server" Width="194px" CssClass="form-control"></asp:TextBox>
                <asp:Button ID="btnBuscar" runat="server"  Text="Buscar" CssClass="btn btn-outline-success" OnClick="btnBuscar_Click" /> <br />
                <br />
                 </div>
                      </ContentTemplate>
                </asp:UpdatePanel>
              
              
                
                <article class="anchura">
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
           
        </main>
         </form>
        <aside>
            <h2 class="section__titulo">Lo más popular</h2>
        </aside>
        
            
            <input type="button" class="leer_noticias2 centrarBotton3" value="Más artículos" onclick="addElemento();">
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
