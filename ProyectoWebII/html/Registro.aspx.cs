using ProyectoWebII.Pojos;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;


namespace ProyectoWebII.html
{
    public partial class Registro : System.Web.UI.Page
    {

        private class APIResult
        {
            public int status { get; set; }
            public String info { get; set; }
            public String details { get; set; }
        }

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
            string telefono =txtTelefono.Text.ToString();
            // hola gente de youtube
            ServiceReferenceUsuarios.ServicioWebUsuariosSoapClient servicioWebUsuarios = new ServiceReferenceUsuarios.ServicioWebUsuariosSoapClient();
            if (validarCorreo(txtCorreo.Text))
            {
                System.Net.ServicePointManager.ServerCertificateValidationCallback +=
(se, cert, chain, sslerror) =>
{
return true;
};
                if (servicioWebUsuarios.addUser(correo, pass, nombre, apellido, telefono))
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Registrado", "<Script Language=javascript>alert('Registardo correctamente')</script>");
                    txtCorreo.Text = "";
                    txtPass.Text = "";
                    txtnombre.Text = "";
                    txtapellidos.Text = "";
                    txtTelefono.Text = "";
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "No registrado", "<Script Language=javascript>alert('No se puedo registrar')</script>");
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Registrado", "<Script Language=javascript>alert('Correo no válido')</script>");
            }
        }

        public bool validarCorreo(string correo)
        {
            const String APIURL = "https://api.email-validator.net/api/verify";
            HttpClient client = new HttpClient();
            String Email = correo;
            String APIKey = "ev-ed4dadeed8d74d01a407310ab2c8d207";

            var postData = new List<KeyValuePair<string, string>>();
            postData.Add(new KeyValuePair<string, string>("EmailAddress", Email));
            postData.Add(new KeyValuePair<string, string>("APIKey", APIKey));

            HttpContent content = new FormUrlEncodedContent(postData);

            HttpResponseMessage result = client.PostAsync(APIURL, content).Result;
            string resultContent = result.Content.ReadAsStringAsync().Result;

            APIResult res = new System.Web.Script.Serialization.JavaScriptSerializer().
            Deserialize<APIResult>(resultContent);

            switch (res.status)
            {
                // valid addresses have a {200, 207, 215} result code
                // result codes 114 and 118 need a retry
                case 200:
                case 207:
                case 215:
                    // address is valid
                    return true;
                    // 215 - can be retried to update catch-all status
                case 114:
                    // greylisting, wait 5min and retry
                    break;
                case 118:
                    // api rate limit, wait 5min and retry
                    break;
                default:
                    // address is invalid
                    // res.info
                    // res.details
                    return false;
            }
            return false;
        }
    }
}