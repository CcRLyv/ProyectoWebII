using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoWebII.html
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Se valida que los campos de los texbox no esten vacios 
           

            if (!name.Text.Equals("") | !pass.Text.Equals(""))
            {
                //Se obtiene los datos de los texbox y se mandan al metodo DaoUsuarios
                

               // if (id > 0)
                //{
                    //Se manda llamadar al metodo DaoUsuarios
                    //clsUsuarios us = new DaoUsuarios().obtenerUsuario(id);
                    //Se lleva al menu principal 

                     //MenuPrincipal obj = new MenuPrincipal(us);
                   
                    //obj.Show();
                  //  this.Visible = false;
               }
                else
                {
                    //Se manda un mensaje de error de datos incorrectos
                    

                }
            }
        }
    }
