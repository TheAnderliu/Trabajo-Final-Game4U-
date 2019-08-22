using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace PROTOTIPO_02
{
    /// <summary>
    /// Lógica de interacción para LOGIN.xaml
    /// </summary>
    public partial class LOGIN : Window
    {
        public static String Usuario { get; set; }
        public static String Contraseña { get; set; }

        public static List<CUsuario> Lista_Usuarios_Registrados_Por_Login { get; set; }


        public LOGIN()
        {
            InitializeComponent();

            if (Lista_Usuarios_Registrados_Por_Login == null)
            {
                Lista_Usuarios_Registrados_Por_Login = new List<CUsuario>();
            }
         
           
        }
        private void btnCerrar_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
        private void btnMinimizar_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }
        private void Border_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }
        private void btnIniciarSesion_Click(object sender, RoutedEventArgs e)
        {
            bool existeusuario=false;
            Usuario = txtUsuario.Text;
            Contraseña = txtContraseña.Password;

            if (Usuario == "admin" && Contraseña == "admin")
            {
                MessageBox.Show("Inició sesión correctamente.", "", MessageBoxButton.OK, MessageBoxImage.Asterisk);
                MENU administrador = new MENU();
                this.Hide();
                administrador.Show();
            }


            else if (CSistema.Listado_Videojuegos != null || Lista_Usuarios_Registrados_Por_Login != null)
            {


                if (CSistema.Listado_Videojuegos != null)
                {


                    foreach (CVideojuego objvideojuego in CSistema.Listado_Videojuegos)
                    {
                        existeusuario = objvideojuego.lista_usuarios.Exists(delegate(CUsuario value) { return value.nombre.Equals(Usuario); });

                        if (existeusuario)
                        {
                            MessageBox.Show("Inició sesión correctamente.", "", MessageBoxButton.OK, MessageBoxImage.Asterisk);
                            MENUc cliente = new MENUc();
                            this.Hide();
                            cliente.Show();
                            break;
                        }

                    }
                }
                 if (Lista_Usuarios_Registrados_Por_Login!=null)
                {
                    if (Lista_Usuarios_Registrados_Por_Login.Exists(delegate(CUsuario value) { return value.nombre.Equals(Usuario); }))
                    {

                        MessageBox.Show("Inició sesión correctamente.", "", MessageBoxButton.OK, MessageBoxImage.Asterisk);
                        MENUc cliente = new MENUc();
                        this.Hide();
                        cliente.Show();

                    }
         
                }

            }
     

              
            
        }

     

        private void btnCrearCuenta_Click(object sender, RoutedEventArgs e)
        {

            RegistroCuenta frmRegistroCliente = new RegistroCuenta();
            this.Hide();
            frmRegistroCliente.Show();




        }


   
    }
}

