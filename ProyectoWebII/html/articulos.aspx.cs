using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml;
using ProyectoWebII.Pojos;

namespace ProyectoWebII.html
{
    public partial class articulos : System.Web.UI.Page
    {
        String path = System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"..\bloodofgamer\xml\Articulo.xml");

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
            bool bandera = false;

            foreach (XmlNode item in articulos)
            {


                //Determinamos el nodo a modificar por medio del id de las polizas.
                if (item.Attributes["id"].Value == TextBox1.Text)
                {
                    //Nodo sustituido.
                    XmlNode nodoOld = item;

                    //Borrar un nodo.
                    art.RemoveChild(nodoOld);
                    bandera = true;
                    TextBox1.Text = "";
                    break;
                }
            }
            if (!bandera)
            {
                string script = @"<script type='text/javascript'>
                alert('El ID no existe');
                </script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
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
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Articulo_nuevo.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(path);


            XmlNodeList elemList = doc.GetElementsByTagName("Articulo");

            for (int i = 0; i < elemList.Count; i++)
            {
                if (tbBuscar.Text.Equals(elemList[i].FirstChild.InnerText))
                {
                    String titulo, contenido, fecha;
                    int id;

                    id =int.Parse(elemList[i].Attributes["id"].Value);
                    contenido = elemList[i].SelectSingleNode("Contenido").InnerText;
                    fecha = elemList[i].SelectSingleNode("Fecha").InnerText;
                    titulo = elemList[i].SelectSingleNode("Titulo").InnerText;


                    ObjArticulo articulo = new ObjArticulo(titulo,contenido,fecha,id);


                   List<ObjArticulo> art = new List<ObjArticulo>();
                    art.Add(articulo);
                    GridView1.DataSource = art;
                    GridView1.DataBind();
                    break;
                }
                else
                {


                }
            }
        }

        protected void btnRef_Click(object sender, EventArgs e)
        {
            cargar();
        }
    }

   
}