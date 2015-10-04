using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAG.app.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnsub_Click(object sender, EventArgs e)
        {
            string user = this.usuario.Text.Replace(";","").Replace("--","");
            string contrasena = this.password.Text.Replace(";", "").Replace("--", "");

            if (Controlador.Autenticar(user,contrasena) == true)
            {
                FormsAuthentication.RedirectFromLoginPage(user,true);
                DataTable tableUser = Controlador.prValidar(user, contrasena);
                Session["id"] = tableUser.Rows[0]["idEmpleado"].ToString();
                Session["usuario"] = tableUser.Rows[0]["nombre"].ToString();
                Session["rol"] = tableUser.Rows[0]["nombreRol"].ToString();
                Session["departamento"] = tableUser.Rows[0]["idDepartamento"].ToString();
                FormsAuthentication.RedirectFromLoginPage(Session["usuario"].ToString(), true);
                Response.Redirect("/app/Account/Perfil.aspx");
            }
            else {
                this.MsjError.Text = "Usuario o Password incorrecto";
            }
        }

    }
}