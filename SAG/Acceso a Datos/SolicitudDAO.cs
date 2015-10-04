using Class_Library;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Acceso_a_Datos
{
    public class SolicitudDAO
    {
        public static void Realizar_Solicitud(Solicitud solicitud){
            string sql = @"exec pa_solicitar @id, @departamento, @tipo, @fecha";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TribunalesDB2ConnectionString"].ToString()))
            {
                conn.Open();
                SqlCommand command = new SqlCommand(sql, conn);
                command.Parameters.AddWithValue("@id",solicitud.IdSolicitud);
                command.Parameters.AddWithValue("@departamento",solicitud.Departamento);
                command.Parameters.AddWithValue("@tipo",solicitud.TipoSoli);
                command.Parameters.AddWithValue("@fecha",solicitud.Fecha);

                command.ExecuteNonQuery();
            }
        }
    }
}