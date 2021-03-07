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
            try
            {
                DataSet lstNode = new DataSet();
                lstNode.ReadXml(path);
                GridView1.DataSource = lstNode.Tables[0];
                GridView1.DataBind();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}