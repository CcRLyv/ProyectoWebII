using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using ProyectoWebII.Pojos;

namespace ProyectoWebII.WebServices
{
    /// <summary>
    /// Descripción breve de ServicioWebUsuarios
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class ServicioWebUsuarios : System.Web.Services.WebService
    {

        Pojos.ObjUsuarios objUsuarios;

        public ServicioWebUsuarios()
        {

        }

        DaoUsuario objConectar = new DaoUsuario();

        [WebMethod]
        public bool addUser(string correo, string pass, string nombre, string apellido, int telefono)
        {
            objUsuarios = new ObjUsuarios(correo, pass, nombre, apellido, telefono);
            return objConectar.addUsuario(objUsuarios);
        }
    }
}
