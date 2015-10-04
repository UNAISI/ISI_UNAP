using Acceso_a_Datos;
using Class_Library;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAG.app.Acceso.Mantenimiento
{
    public partial class SolicitarMantenimiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Btn_Aceptar_Click(object sender, EventArgs e)
        {
            string idSoliMate = this.Txt_idSoli.Text.Replace(";", "").Replace("--", "");
            int empleado = Convert.ToInt32(Session["id"].ToString());
            string fecha = this.Cld_fecha.SelectedDate.ToString();
            string articulo = this.Lstbx_articulo.Text;
            string descripcion = this.Txt_descripcionProblema.Text.Replace(";", "").Replace("--", "");
            string tipo = this.Txt_tipoUso.Text.Replace(";", "").Replace("--", "");
            int cantidad =  Convert.ToInt32(this.Txt_cantidad.Text.Replace(";", "").Replace("--", ""));

            SolicitudMaterial soliMate = new SolicitudMaterial(idSoliMate,empleado,fecha,articulo,descripcion,tipo,cantidad);
            try
            {
                SolicitudMaterialDAO.Ingresar_Solicitud(soliMate);
                SolicitudMaterialDAO.Ingresar_Detalle(soliMate);
                this.Ltl_Mensaje.Text = @"<div class='alert alert-success'>
                    <strong>Enviado!</strong> Esperamos atender tu solicitud pronto.
                    </div>";
                VaciarCampos();

            }
            catch(Exception ex){
                this.Ltl_Mensaje.Text = @"<div class='alert alert-danger'>
                    <strong>Error!</strong> " + ex.Message.ToString() + "</div>";
            }
        }

        protected void VaciarCampos() {
            this.Txt_idSoli.Text = String.Empty;
            this.Txt_descripcionProblema.Text = String.Empty;
            this.Txt_tipoUso.Text = String.Empty;
            this.Txt_cantidad.Text = String.Empty;
        }

        protected void Btn_Cancelar_Click(object sender, EventArgs e)
        {
            VaciarCampos();
        }
    }
}