using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml;

namespace ProyectoWebII.html
{
    public partial class articulos : System.Web.UI.Page
    {
        String path = System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"..\ProyectoWebII\xml\Articulo.xml");

        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument document = new XmlDocument();
            document.XmlResolver = null;
            document.Load(path);

            XmlNode root = document.DocumentElement;

            XmlNodeList listaArticulos = document.SelectNodes("Articulos/Articulo");
            foreach (XmlNode item in listaArticulos)
            {
                string javaScript = "alert(\"Hola\"); function addElemento (){" +
                    "var capa = document.getElementById(\"container\");" +
                    "var articulo = document.createElement(\"article\");" +
                    "var aImg = document.createElement(\"a\");" +
                    "var img = document.createElement(\"img\");" +
                    "var div = document.createElement(\"div\");" +
                    "var a = document.createElement(\"a\");" +
                    "var pArticle = document.createElement(\"p\");" +
                    "var pfecha = document.createElement(\"p\");" +
                    "aImg.title = \"Smach\";" +
                    "aImg.href = \"articulo.php\";" +
                    "img.src = \"../img/7.jpg\";" +
                    "a.className = \"article_titulo\";" +
                    "a.href = \"articulo.php\";" +
                    "a.textContent = \"#ViernesRetro: El Smash anda barato agregado\";" +
                    "pArticle.className = \"article_texto\";" +
                    "pArticle.textContent = \"Holi holi holi holi holi holi holi holi holi holi holi holi\";" +
                    "pfecha.className = \"fecha\";" +
                    "pfecha.textContent = \"31/10/2020\";" +
                    "capa.appendChild(articulo);" +
                    "articulo.appendChild(aImg);" +
                    "aImg.appendChild(img);" +
                    "articulo.appendChild(div);" +
                    "div.appendChild(a);" +
                    "div.appendChild(pArticle);" +
                    "div.appendChild(pfecha);" +
                "}" +
                "addElemento()";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "script", javaScript, true);
            }
        }
    }
}