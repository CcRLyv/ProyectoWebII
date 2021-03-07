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
                HtmlGenericControl articuloHtml = new HtmlGenericControl("article");
                if (item.SelectSingleNode("Articulos").SelectSingleNode("IdCotizacion").InnerText == TextBox1.Text)
                {
                    item.ChildNodes[0].ChildNodes[1].InnerText = TextBox2.Text;
                    item.ChildNodes[0].ChildNodes[2].InnerText = TextBox3.Text;
                    item.ChildNodes[1].ChildNodes[0].InnerText = TextBox4.Text;
                    item.ChildNodes[1].ChildNodes[1].InnerText = TextBox5.Text;
                    item.ChildNodes[1].ChildNodes[2].InnerText = TextBox6.Text;
                    item.ChildNodes[2].ChildNodes[0].InnerText = TextBox7.Text;
                    item.ChildNodes[2].ChildNodes[1].InnerText = TextBox8.Text;
                    item.ChildNodes[2].ChildNodes[2].InnerText = TextBox9.Text;
                    item.ChildNodes[2].ChildNodes[3].InnerText = TextBox10.Text;
                    doc.Save(path);
                    break;
                }
            }

            //< article >
            //        < a title = "Smach" href = "articulo.aspx" >< img src = "../img/7.jpg" ></ a >

            //               < div >

            //                   < a class="article_titulo" href="articulo.php">
            //                #ViernesRetro: El Smash anda barato
            //            </a>
            //            <p class="article_texto">El Smach anda barato, cómpralo en corto.</p>
            //            <p class="fecha">31/10/2020</p>
            //        </div>
            //    </article>
        }
    }
}