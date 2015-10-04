using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;
using Class_Library;

namespace Acceso_a_Datos
{
    public class SolicitudMaterialDAO
    {
        public static void Ingresar_Solicitud(SolicitudMaterial soliMate) {
            string sql = @"exec pa_solicitar_Material @id, @empleado, @fecha";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TribunalesDB2ConnectionString"].ToString()))
            {
                conn.Open();
                SqlCommand command = new SqlCommand(sql, conn);
                command.Parameters.AddWithValue("@id", soliMate.IdSoliMate);
                command.Parameters.AddWithValue("@empleado", soliMate.Empleado);
                command.Parameters.AddWithValue("@fecha", soliMate.Fecha);

                command.ExecuteNonQuery(); 
                
            }
        }

        public static void Ingresar_Detalle(SolicitudMaterial soliMate) {
            string sql = @"exec pa_detallar_Solicitud @id, @articulo, @descripcion, @tipo, @cantidad";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TribunalesDB2ConnectionString"].ToString()))
            {
                conn.Open();
                SqlCommand command = new SqlCommand(sql, conn);
                command.Parameters.AddWithValue("@id", soliMate.IdSoliMate);
                command.Parameters.AddWithValue("@articulo", soliMate.Articulo);
                command.Parameters.AddWithValue("@descripcion", soliMate.Descripcion);
                command.Parameters.AddWithValue("@tipo", soliMate.Tipo);
                command.Parameters.AddWithValue("@cantidad", soliMate.Cantidad);

                command.ExecuteNonQuery();

            }
        }
    }
}