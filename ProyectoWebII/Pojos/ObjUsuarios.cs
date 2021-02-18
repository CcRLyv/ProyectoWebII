using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoWebII.Pojos
{
    public class ObjUsuarios
    {


        public int idUsuario { get; set; }
        public string correo { get; set; }
        public string pass { get; set; }
        public string nombre { get; set; }
        public string apellidos { get; set; }
        public int telefono { get; set; }
        
       

        public ObjUsuarios(string correo, string pass, string nombre, string apellidos,int telefono)
        {
            this.correo = correo;
            this.pass = pass;
            this.nombre = nombre;
            this.apellidos = apellidos;
            this.telefono = telefono;

        }
    }
}