using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAG.app
{
    public partial class ProfileMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"].Equals(""))
            {
                Response.Redirect("/app/Account/Login.aspx");
            }
            else
            {
                this.Label1.Text = "Hello "+Context.User.Identity.Name;
            }
            if(!IsPostBack){
                switch (Session["rol"].ToString())
                {
                    case "Administrador": menuAdmi();
                        break;
                    case "Encargado": menuEncargado();
                        break;
                    case "Personal": menuPersonal();
                        break;
                    case "Mantenimiento": menuMante();
                        break;
                    default:
                        break;
                }
            }
        }

        protected void menuAdmi() { 
            string menu = string.Format(@"
            <li><a href='/app/Acceso/Administrador/IngresarUsuario.aspx'><span class='glyphicon glyphicon-plus'></span> Registrar</a></li>
            <li><a href='/app/Acceso/Administrador/AsignarSolicitud.aspx'><span class='glyphicon glyphicon-check'></span> Solicitudes</a></li>
            <li><a href='/app/Acceso/Administrador/AsignarTrabajo.aspx'><span class='glyphicon glyphicon-edit'></span> Asignar</a></li>
            <li><a href='/app/Acceso/Administrador/ModificarUsuario.aspx'><span class='glyphicon glyphicon-cog'></span> Usuarios</a></li>");
            this.ltencabezado.Text = menu;
        }
        protected void menuEncargado() {
            string menu = string.Format(@"
            <li><a href='/app/Acceso/Encargado/RealizarSolicitud.aspx'><span class='glyphicon glyphicon-user'></span> Solicitar</a></li>");
            this.ltencabezado.Text = menu;
        }
        protected void menuPersonal() {
            string menu = string.Format(@"
            <li><a href='/app/Acceso/Personal/ReportePersonal.aspx'><span class='glyphicon glyphicon-pencil'></span> Reporte</a></li>");
            this.ltencabezado.Text = menu;
        }
        protected void menuMante() {
            string menu = string.Format(@"
            <li><a href='/app/Acceso/Mantenimiento/ReporteMantenimiento.aspx'><span class='glyphicon glyphicon-pencil'></span> Reporte</a></li>
            <li><a href='/app/Acceso/Mantenimiento/SolicitarMaterial.aspx'><span class='glyphicon glyphicon-briefcase'></span> Materiales</a></li>
            <li><a href='/app/Acceso/Mantenimiento/ListarSolicitudes.aspx'><span class='glyphicon glyphicon-book'></span> Materiales</a></li>");
            this.ltencabezado.Text = menu;
        }
    }
}