using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Class_Library;



namespace Acceso_a_Datos
{
    public class EmpleadoDAO
    {
        /*valida la creacion en la base de datos del usuario pasado por parametros, se utilizan las
         * propiedades de la clase usuario para obtener los datos.
        */
        public static void ValidarDatosEmpleado(Empleado empleado) {

            string sql = @"exec pa_registrar_Empleado @id,@departamento,@rol,@cargo,@password,@nombre,@apellido,@direccion";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TribunalesDB2ConnectionString"].ToString()))
            {
                conn.Open();
                SqlCommand command = new SqlCommand(sql, conn);
                command.Parameters.AddWithValue("@id",empleado.Cedula);
                command.Parameters.AddWithValue("@departamento",empleado.Departamento);
                command.Parameters.AddWithValue("@rol", empleado.Rol);
                command.Parameters.AddWithValue("@cargo",empleado.Cargo);
                command.Parameters.AddWithValue("@password", empleado.Password);
                command.Parameters.AddWithValue("@nombre",empleado.Nombre);
                command.Parameters.AddWithValue("@apellido",empleado.Apellido);
                command.Parameters.AddWithValue("@direccion",empleado.Direccion);

                command.ExecuteNonQuery(); 
                
            }
        }
    }
}