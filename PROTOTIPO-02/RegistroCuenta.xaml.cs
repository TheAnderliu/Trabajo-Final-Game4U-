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
    /// Lógica de interacción para RegistroCuenta.xaml
    /// </summary>
    public partial class RegistroCuenta : Window
    {
        public RegistroCuenta()
        {
            InitializeComponent();
        }

        private void btnCrearCuenta_Click(object sender, RoutedEventArgs e)
        {
            bool existeusuarioenvideojuegos = false;
            bool existeusuario = false;
            CUsuario objusuario = new CUsuario();
            objusuario.nombre = txtDNI.Text;
            objusuario.contrasenia = txtContraseña.Password;

            if (CSistema.Listado_Videojuegos != null)
            {



                foreach (CVideojuego objvideojuego in CSistema.Listado_Videojuegos)
                {

                    existeusuarioenvideojuegos = objvideojuego.lista_usuarios.Exists(delegate(CUsuario value) { return value.nombre.Equals(objusuario.nombre); });

                    if (existeusuarioenvideojuegos)
                    {
                        break;
                    }

                }
            }

            if (LOGIN.Lista_Usuarios_Registrados_Por_Login!=null)
            {
                existeusuario=LOGIN.Lista_Usuarios_Registrados_Por_Login.Exists(delegate(CUsuario value) { return value.nombre.Equals(objusuario.nombre); });

            }



            if (existeusuarioenvideojuegos == false && existeusuario==false)
            {

                if (checkboxTermYCondi.IsChecked==false)
                {
                    MessageBox.Show("Debe aceptar los términos y condiciones");
                }
                else
                {
                    LOGIN.Lista_Usuarios_Registrados_Por_Login.Add(objusuario);
                    MessageBox.Show("El usuario se registró con éxito" + "\nUsuario: " + objusuario.nombre + "\nContraseña: " + objusuario.contrasenia);
                }

               

            }
            else if (existeusuarioenvideojuegos == true || existeusuario==true)
            {
                

         
                MessageBox.Show("Este usuario ya está registrado");
            }




        }

        private void btnAtras_Click(object sender, RoutedEventArgs e)
        {

            LOGIN LG = new LOGIN();
            LG.Show();
            this.Close();

        }

        private void btnMinimizar_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void btnCerrar_Click(object sender, RoutedEventArgs e)
        {
            LOGIN LG = new LOGIN();
            LG.Show();

            this.Close();
        }

        private void Border_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }
    }
}
