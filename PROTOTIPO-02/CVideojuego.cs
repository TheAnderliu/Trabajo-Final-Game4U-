using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PROTOTIPO_02
{
    public class CVideojuego
    {
        public String nombre { get; set; }
        public Int32 codigo { get; set; }
        public String genero { get; set; }

        public String plataforma { get; set; }
        public Int32 precioventa { get; set; }


        public Int32 cantidad { get; set; }

        public Int32 cantventas { get; set; }

        public List<CUsuario> lista_usuarios { get; set; }

        
        public CVideojuego()
        {


            lista_usuarios = new List<CUsuario>();




        }
    }
}
