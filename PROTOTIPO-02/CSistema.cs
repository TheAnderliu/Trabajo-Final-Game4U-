using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PROTOTIPO_02
{
    public class CSistema
    {


        public static List<CVideojuego> Listado_Videojuegos { get; set; }




        public CSistema()
        {

            if (Listado_Videojuegos == null)
            {
                Listado_Videojuegos = new List<CVideojuego>();

            }

        }


        public bool ExisteVideojuego(String _nombreV)
        {
           
                return Listado_Videojuegos.Exists(delegate(CVideojuego value)
                {


                    return value.nombre.Equals(_nombreV);


                });
         



        }


        public void InsertarVideojuego(CVideojuego objvideojuego)
        {
           
                Listado_Videojuegos.Add(objvideojuego);
           
           

        }



        public bool ExisteUsuario(String _nombreU, String _nombreV)
        {
            CVideojuego objvideojuego = Listado_Videojuegos.Find(delegate(CVideojuego value)
            {

                return value.nombre.Equals(_nombreV);

            });

            return objvideojuego.lista_usuarios.Exists(delegate(CUsuario value) { return value.nombre.Equals(_nombreU); });


        }



        public void RegistrarVenta(CUsuario objusuario, String _nombreV)
        {

            CVideojuego objvideojuego = Listado_Videojuegos.Find(delegate(CVideojuego value)
            {

                return value.nombre.Equals(_nombreV);
            });


           
            objvideojuego.cantventas++;
           


        }

        public void RegistrarUsuario(CUsuario objusuario, String _nombreV)
        {
            CVideojuego objvideojuego = Listado_Videojuegos.Find(delegate(CVideojuego value)
            {

                return value.nombre.Equals(_nombreV);
            });

            objvideojuego.lista_usuarios.Add(objusuario);
        
        
        
        }



        public List<CVideojuego> Lista10MasVendidos()
        {



            IEnumerable<CVideojuego> juego_mas_vendidos = Listado_Videojuegos.OrderByDescending(videojuego => videojuego.cantventas);



            List<CVideojuego> lista_videojuego_encontrados = juego_mas_vendidos.ToList();

            return lista_videojuego_encontrados;

        }


        public List<CVideojuego> Lista10MenosVendidos()
        {


            IEnumerable<CVideojuego> juego_menos_vendidos = Listado_Videojuegos.OrderBy(videojuego => videojuego.cantventas);



            List<CVideojuego> lista_videojuego_encontrados = juego_menos_vendidos.ToList();

            return lista_videojuego_encontrados;


        }



        public List<CVideojuego> ListaPorGanancia()
        {



            IEnumerable<CVideojuego> juego_mayor_ganancia = Listado_Videojuegos.OrderByDescending(videojuego => (videojuego.cantventas) * (videojuego.precioventa));


            List<CVideojuego> lista_videojuego_encontrados = juego_mayor_ganancia.ToList();

            return lista_videojuego_encontrados;


        }



        public List<CVideojuego> ListaVideojuegosDeUsuario(String _nombreU)
        {



            List<CVideojuego> lista_videojuegos_encontrados = new List<CVideojuego>();


            foreach (CVideojuego objvideojuego in Listado_Videojuegos)
            {
                if (objvideojuego.lista_usuarios.Exists(delegate(CUsuario value) { return value.nombre.Equals(_nombreU); }))
                {
                    lista_videojuegos_encontrados.Add(objvideojuego);
                }
            }

            return lista_videojuegos_encontrados;

        }

    }
}
