﻿using System;
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
                if (item.FirstChild.InnerXml == tbElim.Text)
                {
                    //Nodo sustituido.
                    XmlNode nodoOld = item;

                    //Borrar un nodo.
                    art.RemoveChild(nodoOld);
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
                gvArt.DataSource = lstNode.Tables[0];
                gvArt.DataBind();
            }
            catch (Exception)
            {
                
            }
        }
    }

   
}