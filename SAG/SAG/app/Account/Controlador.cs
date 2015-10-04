using Logica_de_Negocio;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace SAG.app.Account
{
    public class Controlador
    {
        
        public static bool Autenticar(string user, string password)
        {
            int cedula = Convert.ToInt32
            (user);
            string sql = @"exec pa_Logueo @user, @password";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TribunalesDB2ConnectionString"].ToString()))
            {
                conn.Open();
                SqlCommand command = new SqlCommand(sql, conn);
                command.Parameters.AddWithValue("@user", cedula);
                string hash = Auxiliar.CodificarPassword(string.Concat(user, password));
                command.Parameters.AddWithValue("@password", password);

                int count = Convert.ToInt32(command.ExecuteScalar());
                if (count == 0)
                    return false;
                else
                    return true;
            }
        }
        public static DataTable prValidar(string user, string pass)
        {
            int cedula = Convert.ToInt32(user);
            string sql = @"exec pa_obtener_Login @user, @pass";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TribunalesDB2ConnectionString"].ToString()))
            {
                SqlCommand command = new SqlCommand(sql, conn);

                command.Parameters.AddWithValue("@user", cedula);
                string hash = Auxiliar.CodificarPassword(string.Concat(user, pass));
                command.Parameters.AddWithValue("@pass", pass);

                conn.Open();
                SqlDataAdapter daAdapter = new SqlDataAdapter(command);
                DataTable dtDatos = new DataTable();
                daAdapter.Fill(dtDatos);
                return dtDatos;

            }
        }

    }
}