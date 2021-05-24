using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoWebII.Pojos;

namespace ProyectoWebII.html
{
    public partial class perfil : System.Web.UI.Page
    {
        DaoUsuario daoUsuario;
        ObjUsuarios usuarios;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            daoUsuario = new DaoUsuario();
            usuarios = daoUsuario.getLogin();

            lbNombre.Text = usuarios.nombre;
            lbApell.Text = usuarios.apellidos;
            lbTel.Text = usuarios.telefono;
            lbCorreo.Text = usuarios.correo;

        }

        protected void btncerrar_Click(object sender, EventArgs e)
        {
            if (daoUsuario.outLog(usuarios.correo,usuarios.pass))
            {
                Session["USUARIO"] = null;
                Response.Redirect("../Default.aspx");
            }
        }
    }
}