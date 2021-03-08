using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ProyectoWebII.html
{
    public partial class Articulo_nuevo : System.Web.UI.Page
    {
        String path = System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"..\ProyectoWebII\xml\Articulo.xml");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                return;
            }
            XDocument document = null;
            try
            {
                 document= XDocument.Load(path);
            }
            catch (Exception)
            {
            }
            if (document == null)
            {
                document = new XDocument(new XDeclaration("1.0", "utf-8", null));
                XElement nodoPolizas = new XElement("Articulos");
                document.Add(nodoPolizas);
            }
            XElement nodoRaiz = document.Root;
            XElement articulo = new XElement("Articulo");
            articulo.SetAttributeValue("id", TextBox3.Text);
            articulo.Add(new XElement("Titulo", TextBox1.Text));
            articulo.Add(new XElement("Contenido", TextBox2.Text));
            articulo.Add(new XElement("Fecha", System.DateTime.Now));
            nodoRaiz.Add(articulo);
            document.Save(path);
        }
    }
}