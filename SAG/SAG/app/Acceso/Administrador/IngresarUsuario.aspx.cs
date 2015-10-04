using Acceso_a_Datos;
using Class_Library;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SAG.app.Acceso.Administrador
{
    public partial class IngresarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_Registrar_Click(object sender, EventArgs e)
        {
            int idUsuario = Convert.ToInt32(this.Txt_cedula.Text.Replace(";","").Replace("--",""));
            string password = this.Txt_password.Text.Replace(";","").Replace("--","");
            int rol = Convert.ToInt32(this.Lst_tipoUsuario.Text.Replace(";", "").Replace("--", ""));

            string departamento = this.Lst_Departamento.Text.Replace(";", "").Replace("--", "");
            int cargo = Convert.ToInt32(this.Lsb_puesto.Text.Replace(";", "").Replace("--", ""));
            string nombre = this.Txt_nombre.Text.Replace(";", "").Replace("--", "");
            string apellido = this.Txt_apellido.Text.Replace(";", "").Replace("--", "");
            string direccion = this.Txt_direccion.Text.Replace(";", "").Replace("--", "");

            Empleado empleado = new Empleado(idUsuario, departamento, rol, cargo, password, nombre, apellido, direccion);
            try{
                EmpleadoDAO.ValidarDatosEmpleado(empleado);
                this.Ltl_Mensaje.Text = @"<div class='alert alert-success'>
                <strong>Registro exitoso!</strong> El usuario fue agregado con exito.
                </div>";

                VaciarCampos();
            }
            catch(Exception ex){
                this.Ltl_Mensaje.Text = @"<div class='alert alert-danger'>
                <strong>Error!</strong> "+ex.Message.ToString()+"</div>";
                VaciarCampos();
            }
        }

        public void VaciarCampos()
        {
            Txt_cedula.Text = String.Empty;
            Txt_password.Text = String.Empty;
            Txt_nombre.Text = String.Empty;
            Txt_apellido.Text = String.Empty;
            Txt_direccion.Text = String.Empty;
        }
    }
}