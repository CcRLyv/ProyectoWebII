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
                conex.ConnectionString = "server=mysql5045.site4now.net;database=db_a74df5_bloodof;user=a74df5_bloodof;pwd=root1234";


            }
            catch (Exception)
            {
                throw;
            }

        }

        public bool addUsuario(ObjUsuarios objUsuarios)
        {
            MySqlConnection conexxion = new MySqlConnection();
            MySqlCommand comando = new MySqlCommand();

            try
            {
                conexxion.ConnectionString = "server=mysql5045.site4now.net;database=db_a74df5_bloodof;user=a74df5_bloodof;pwd=root1234";
                conexxion.Open();

                /// AGREGAR EL REGISTRO A LA BASE DE DATOS
                string strSQL = "call addusuario('" + objUsuarios.correo + "','" + objUsuarios.pass + "','" + objUsuarios.nombre + "','" + objUsuarios.apellidos + "'," + objUsuarios.telefono + ");";
                comando = new MySqlCommand(strSQL, conexxion);
                // ("132-7462-4757-934","Maria DB",1,2008,"Giovanni Tapia","Mexico","Descubre el funcionmiento de Maria DB","Sistemas computacionales","Taller de base de datos");
                // insert into login (correo,pass,nombre,apellidos,telefono) values ("sfsfa","safsaf","safsa","assfas",444);

                comando.ExecuteNonQuery();
                return true;
            } 
            catch(Exception e)
            {
                return false;
            }
            finally
            {
                comando.Dispose();
                conexxion.Close();
            }
            /// FINALIZAMOS LA CONEXION CERRAMOS TODO

        }

        public bool modify(int id) {

            MySqlConnection Conexion = new MySqlConnection();
            MySqlCommand comando = new MySqlCommand();
            try
            {
                Conexion.ConnectionString = "server=mysql5045.site4now.net;database=db_a74df5_bloodof;user=a74df5_bloodof;pwd=root1234";
                Conexion.Open();

                string consulta = "UPDATE login SET login = 0 where id = "+id;
                comando = new MySqlCommand(consulta, Conexion);
                comando.ExecuteNonQuery(); ;  
             

                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                comando.Dispose();
                Conexion.Close();
                Conexion.Dispose();

            }
        }



        public ObjUsuarios getLogin()
        {

            MySqlConnection Conexion = new MySqlConnection();
            MySqlCommand comando = new MySqlCommand();
            try
            {
                Conexion.ConnectionString = "server=mysql5045.site4now.net;database=db_a74df5_bloodof;user=a74df5_bloodof;pwd=root1234";
                Conexion.Open();

                string consulta = "select * from login where login = 1";
                comando = new MySqlCommand(consulta, Conexion);
                MySqlDataReader DaR = comando.ExecuteReader();

                ObjUsuarios us = new ObjUsuarios();
                while (DaR.Read())
                {

                    us.idUsuario = DaR.GetInt32(0);
                    us.nombre = DaR.GetString(1);
                    us.pass = DaR.GetString(2);
                    us.correo = DaR.GetString(3);
                    us.apellidos = DaR.GetString(4);
                    us.telefono = DaR.GetString(5);


                }
                DaR.Dispose();
                comando.Dispose();


                return us;
            }
            catch
            {
                return new ObjUsuarios();
            }
            finally
            {
                comando.Dispose();
                Conexion.Close();
                Conexion.Dispose();

            }
        }

        public ObjUsuarios logear(String correo, string pass)
        {
            
            MySqlConnection Conexion = new MySqlConnection();
            MySqlCommand comando = new MySqlCommand();
         
            try
            {
                Conexion.ConnectionString = "server=mysql5045.site4now.net;database=db_a74df5_bloodof;user=a74df5_bloodof;pwd=root1234";
                Conexion.Open();

                string consulta = "select * from login where correo='" + correo + "' and pass='" + pass + "'";
                comando = new MySqlCommand(consulta, Conexion);
               

                MySqlDataReader DaR = comando.ExecuteReader();
                
                ObjUsuarios us = new ObjUsuarios();
                while (DaR.Read())
                {
                   
                    us.idUsuario = DaR.GetInt32(0);
                    us.nombre = DaR.GetString(1);
                    us.pass = DaR.GetString(2);
                    us.correo = DaR.GetString(3);
                    us.apellidos = DaR.GetString(4);
                    us.telefono = DaR.GetString(5);


                }
                DaR.Dispose();
                comando.Dispose();
              


                string consulta2 = "UPDATE login SET login = 1 where ID_Login = " + us.idUsuario;
                comando = new MySqlCommand(consulta2, Conexion);
                comando.ExecuteNonQuery(); ;

                return us ;
            }
            catch
            {
                return new ObjUsuarios();
            }
            finally
            {
                comando.Dispose();
                
                Conexion.Close();
                Conexion.Dispose();

            }

        }

        public bool outLog(String correo, string pass)
        {

            MySqlConnection Conexion = new MySqlConnection();
            MySqlCommand comando = new MySqlCommand();

            try
            {
                Conexion.ConnectionString = "server=mysql5045.site4now.net;database=db_a74df5_bloodof;user=a74df5_bloodof;pwd=root1234";
                Conexion.Open();

                string consulta = "select * from login where correo='" + correo + "' and pass='" + pass + "'";
                comando = new MySqlCommand(consulta, Conexion);


                MySqlDataReader DaR = comando.ExecuteReader();

                ObjUsuarios us = new ObjUsuarios();
                while (DaR.Read())
                {

                    us.idUsuario = DaR.GetInt32(0);
                    us.nombre = DaR.GetString(1);
                    us.pass = DaR.GetString(2);
                    us.correo = DaR.GetString(3);
                    us.apellidos = DaR.GetString(4);
                    us.telefono = DaR.GetString(5);


                }
                DaR.Dispose();
                comando.Dispose();



                string consulta2 = "UPDATE login SET login = 0 where ID_Login = " + us.idUsuario;
                comando = new MySqlCommand(consulta2, Conexion);
                comando.ExecuteNonQuery(); ;
              
                return true;
            }
            catch
            {
                return false;
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