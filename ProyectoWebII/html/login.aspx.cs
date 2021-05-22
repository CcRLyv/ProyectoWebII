using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using ProyectoWebII.Pojos;
namespace ProyectoWebII.html
{
    public partial class login : System.Web.UI.Page
    {
        public ObjUsuarios us { get; set; }
        DaoUsuario daoUsuario;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Se valida que los campos de los texbox no esten vacios 


            if (!name.Text.Equals("") | !pass.Text.Equals(""))
            {
                daoUsuario = new DaoUsuario();
                //Se obtiene los datos de los texbox y se mandan al metodo DaoUsuarios

                ObjUsuarios us = daoUsuario.logear(name.Text, pass.Text);

                if (us.idUsuario!=0)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Registrado", "<Script Language=javascript>alert('Logueado')</script>");
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Registrado", "<Script Language=javascript>alert('No se pudo loguear')</script>");

                }
            }
        }
        }
    }
