using System;
using System.Collections.Generic;
using System.Data;
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
            cargar();
        }

        protected void btnElim_Click(object sender, EventArgs e)
        {
            XmlDocument documento = new XmlDocument();
            documento.Load(path);


            //Obtenemos el nodo raiz del documento.
            XmlElement art = documento.DocumentElement;

            //Obtenemos la lista de todos las polizas.
            XmlNodeList articulos = documento.SelectNodes("Articulos/Articulo");

            foreach (XmlNode item in articulos)
            {


                //Determinamos el nodo a modificar por medio del id de las polizas.
                if (item.Attributes["id"].Value == TextBox1.Text)
                {
                    //Nodo sustituido.
                    XmlNode nodoOld = item;

                    //Borrar un nodo.
                    art.RemoveChild(nodoOld);
                }
                else
                {
                    string script = @"<script type='text/javascript'>
                
                alert('El ID no existe');
                </script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                }

            }
            //Salvamos el documento.
            documento.Save(path);
            cargar();
        }

        public void cargar()
        {

            try
            {
                DataSet lstNode = new DataSet();
                lstNode.ReadXml(path);
                GridView1.DataSource = lstNode.Tables[0];
                GridView1.DataBind();
            }
            catch (Exception)
            {
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Articulo_nuevo.aspx");
        }
    }

   
}