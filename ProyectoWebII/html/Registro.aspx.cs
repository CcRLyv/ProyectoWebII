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
            string correo = txtcorreo.Text.ToString();
            string pass = txttitulo.Text.ToString();

            string nombre = txtautores.Text.ToString();
            string apellido = txtautores.Text.ToString();
            int telefono = Int32.Parse(txtedicion.Text);

            ObjLibros = new ObjLibros(ISBN, Titulo, Numero_edicion, anio, nombre_atores, Pais, sipnosis, carrera, materia);
            objConectar.addlibro(ref ObjLibros);

        }
    }
}