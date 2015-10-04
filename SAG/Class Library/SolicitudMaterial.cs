using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Class_Library
{
    public class SolicitudMaterial
    {
        private string idSoliMate;
        private int empleado;
        private string fecha;
        private string articulo;
        private string descripcion;
        private string tipo;
        private int cantidad;
        
        public SolicitudMaterial(string idSoliMate, int empleado, string fecha){
            this.idSoliMate = idSoliMate;
            this.empleado = empleado;
            this.fecha = fecha;
        }

        public SolicitudMaterial(string idSoliMate, int empleado, string fecha, string articulo, string descripcion, string tipo, int cantidad) {
            this.idSoliMate = idSoliMate;
            this.empleado = empleado;
            this.fecha = fecha;
            this.articulo = articulo;
            this.descripcion = descripcion;
            this.tipo = tipo;
            this.cantidad = cantidad;
        }

        public string IdSoliMate
        {
            get { return idSoliMate; }
            set { idSoliMate = value; }
        }
        public int Empleado
        {
            get { return empleado; }
            set { empleado = value; }
        }
        public string Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }
        public string Articulo
        {
            get { return articulo; }
            set { articulo = value; }
        }
        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
        public int Cantidad
        {
            get { return cantidad; }
            set { cantidad = value; }
        }
        public string Tipo
        {
            get { return tipo; }
            set { tipo = value; }
        }
    }
}