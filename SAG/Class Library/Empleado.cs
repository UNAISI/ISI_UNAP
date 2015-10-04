using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Class_Library
{
    public class Empleado
    {
        private int cedula;
        private string departamento;
        private int rol;
        private int cargo;
        private string password;
        private string nombre;        
        private string apellido;
        private string direccion;

        public Empleado(int cedula, string departamento, int rol, int cargo, string password, string nombre, string apellido, string direccion) {
            this.cedula = cedula;
            this.departamento = departamento;
            this.rol = rol;
            this.cargo = cargo;
            this.password = password;
            this.nombre = nombre;
            this.apellido = apellido;
            this.direccion = direccion;
        }
        
        public int Cedula
        {
            get { return cedula; }
            set { cedula = value; }
        }
        public string Departamento
        {
            get { return departamento; }
            set { departamento = value; }
        }
        public int Rol
        {
            get { return rol; }
            set { rol = value; }
        }
        public int Cargo
        {
            get { return cargo; }
            set { cargo = value; }
        }
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }
        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }


    }
}
