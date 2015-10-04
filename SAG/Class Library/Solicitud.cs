using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Class_Library
{
    public class Solicitud
    {
        private string idSolicitud;
        private string departamento;
        private string tipoSoli;
        private string fecha;

        public Solicitud(string idSolicitud, string departamento, string tipoSoli, string fecha) {
            this.idSolicitud = idSolicitud;
            this.departamento = departamento;
            this.tipoSoli = tipoSoli;
            this.fecha = fecha;
        }
        public string IdSolicitud
        {
            get { return idSolicitud; }
            set { idSolicitud = value; }
        }
        public string Departamento
        {
            get { return departamento; }
            set { departamento = value; }
        }
        public string TipoSoli
        {
            get { return tipoSoli; }
            set { tipoSoli = value; }
        }
        public string Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }
    }
}