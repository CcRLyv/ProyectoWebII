using ProyectoWebII.Pojos;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ProyectoWebII.html
{
    public partial class Registro : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void btnresenas_Click(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string correo = txtCorreo.Text.ToString();
            string pass = txtPass.Text.ToString();

            string nombre = txtnombre.Text.ToString();
            string apellido = txtapellidos.Text.ToString();
            string telefono =txtTelefono.Text.ToString();
            // hola gente de youtube
            ServiceReferenceUsuarios.ServicioWebUsuariosSoapClient servicioWebUsuarios = new ServiceReferenceUsuarios.ServicioWebUsuariosSoapClient();
            if (servicioWebUsuarios.addUser(correo, pass, nombre, apellido, telefono))
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Registrado", "<Script Language=javascript>alert('Registardo correctamente')</script>");
                txtCorreo.Text = "";
                txtPass.Text = "";
                txtnombre.Text = "";
                txtapellidos.Text = "";
                txtTelefono.Text = "";
            } else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "No registrado", "<Script Language=javascript>alert('No se puedo registrar')</script>");
            }
        }
    }
}