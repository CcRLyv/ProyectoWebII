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


        DaoUsuario objConectar = new DaoUsuario();
        ObjUsuarios ObjUsuarios;
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
            int telefono = Int32.Parse(txtTelefono.Text);

            ObjUsuarios =new ObjUsuarios(correo, pass, nombre, apellido, telefono);
            objConectar.addUsuario(ref ObjUsuarios);

        }
    }
}