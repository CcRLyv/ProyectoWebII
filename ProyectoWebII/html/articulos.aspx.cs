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
                string javaScript = "MostrarMensaje();";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "script", javaScript, true);
            }
        }
    }
}