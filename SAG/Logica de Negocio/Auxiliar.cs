using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace Logica_de_Negocio
{
    public partial class Auxiliar
    {
        public static string CodificarPassword(string primerPassword) {
            string clave = "72ggbcye7364ç5%hgd/.83045,72!@847@9dmshfjsnc3/jd";
            SHA512 sha512 = new SHA512CryptoServiceProvider();
            byte[] inputBytes = (new UnicodeEncoding()).GetBytes(primerPassword+clave);
            byte[] hash = sha512.ComputeHash(inputBytes);
            return Convert.ToBase64String(hash);
        }
    }
}