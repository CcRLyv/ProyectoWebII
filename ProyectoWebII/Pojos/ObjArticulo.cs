using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoWebII.Pojos
{
    public class ObjArticulo
    {
       
        public String Titulo { get; set; }
        public String Contenido { get; set; }
        public String Fecha { get; set; }
        public int Id { get; set; }

        public ObjArticulo(string titulo, string contenido, string fecha, int id)
        {
            this.Titulo = titulo;
            this.Contenido = contenido;
            this.Fecha = fecha;
            this.Id = id;
        }
    }
}