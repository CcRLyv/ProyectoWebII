using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using ProyectoWebII.Pojos;

namespace ProyectoWebII
{
    public class DaoUsuario
    {

        MySqlConnection conex = new MySqlConnection();
        public void conexion()
        {
            try
            {
                conex.ConnectionString = "server=localhost; database=pagina; user=root; pwd=root; port=3305";


            }
            catch (Exception)
            {
                throw;
            }

        }

        public bool addUsuario(ref ObjUsuarios objUsuarios)
        {
            MySqlConnection conexxion = new MySqlConnection();
            MySqlCommand comando = new MySqlCommand();



            conexxion.ConnectionString = "server=localhost; database=pagina; user=root; pwd=root; port=3305";
            conexxion.Open();

            /// AGREGAR EL REGISTRO A LA BASE DE DATOS
            string strSQL = "call addusuario('" + objUsuarios.correo + "','" + objUsuarios.pass + "','" + objUsuarios.nombre + "','" + objUsuarios.apellidos + "'," + objUsuarios.telefono + ");";
            comando = new MySqlCommand(strSQL, conexxion);
            // ("132-7462-4757-934","Maria DB",1,2008,"Giovanni Tapia","Mexico","Descubre el funcionmiento de Maria DB","Sistemas computacionales","Taller de base de datos");
            // insert into login (correo,pass,nombre,apellidos,telefono) values ("sfsfa","safsaf","safsa","assfas",444);

            comando.ExecuteNonQuery();
            comando.Dispose();
            conexxion.Close();
            return true;

            /// FINALIZAMOS LA CONEXION CERRAMOS TODO

        }

        public int logear(ref ObjUsuarios objUsuarios)
        {

           
            
            MySqlConnection Conexion = new MySqlConnection();
            MySqlCommand comando = new MySqlCommand();
            try
            {
                Conexion.ConnectionString = "server=localhost; database=pagina; user=root; pwd=root";
                Conexion.Open();

                string consulta = "select * from login where correo='" + objUsuarios.correo + "' and pass='" + objUsuarios.pass + "'";
                comando = new MySqlCommand(consulta, Conexion);
               

                MySqlDataReader DaR = comando.ExecuteReader();
                int id = 0;
                while (DaR.Read())
                {
                    id = DaR.GetInt16(0);
                }

                return id;
            }
            catch
            {
                return 0;
            }
            finally
            {
                comando.Dispose();
                Conexion.Close();
                Conexion.Dispose();

            }

        }
}
}