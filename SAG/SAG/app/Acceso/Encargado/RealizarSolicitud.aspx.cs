using Acceso_a_Datos;
using Class_Library;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAG.app.Acceso.Encargado
{
    public partial class SolicitarPersonal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Aceptar_Click(object sender, EventArgs e)
        {
            string tipoSoli = this.Ltb_Tipo_Soli.Text.Replace(";", "").Replace("--", "");
            string idSolicitud = this.Txt_IdSolicitud.Text.Replace(";", "").Replace("--", ""); ;
            string fecha = this.Cld_fecha.SelectedDate.ToString();
            string departamento = Session["departamento"].ToString();
            if(idSolicitud!=""){
                Solicitud solicitud = new Solicitud(idSolicitud,departamento,tipoSoli,fecha);
                try {
                    SolicitudDAO.Realizar_Solicitud(solicitud);
                    this.Ltl_Mensaje.Text = @"<div class='alert alert-success'>
                    <strong>Solicitud exitosa!</strong> Esperamos atenderle pronto.
                    </div>";
                }
                catch(Exception ex){
                    this.Ltl_Mensaje.Text = @"<div class='alert alert-danger'>
                    <strong>Se produjo un error!</strong> "+ex.Message.ToString()+"</div>";
                }
            }
            else{
                this.Ltl_Mensaje.Text = @"<div class='alert alert-danger'>
                    <strong>Datos incompletos!</strong> Hay campos vacios.
                    </div>";
            }
        }

        protected void Btn_Cancelar_Click(object sender, EventArgs e)
        {
            this.Txt_IdSolicitud.Text=String.Empty;
        }
    }
}