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
        String path = @"C:\Users\EdgarSsj\Desktop\Servicio\Articulo.xml";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            XDocument document = new XDocument(new XDeclaration("1.0", "utf-8", null));
            XElement nodoPolizas = new XElement("Articulos");
            document.Add(nodoPolizas);
            XElement nodoRaiz = new XElement("Articulo");
            nodoPolizas.Add(nodoRaiz);

            XElement cotizacion = new XElement("Articulo");
           // cotizacion.Add(new XElement("IdArticulo", TextBox1.Text));
            cotizacion.Add(new XElement("Titulo", TextBox1));
            cotizacion.Add(new XElement("Contenido", TextBox2.Text));
            nodoRaiz.Add(cotizacion);
            document.Save(path);

        }
    }
}