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
using System.Windows.Threading;

namespace PROTOTIPO_02
{
    /// <summary>
    /// Lógica de interacción para MENUc.xaml
    /// </summary>
    public partial class MENUc : Window
    {
        CSistema objsistema = new CSistema();
        public MENUc()
        {
            InitializeComponent();
        }
        private void BtnCerrar_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("¿Seguro que desea salir?", "Mensaje", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                LOGIN LG = new LOGIN();
                LG.Show();
                this.Close();
            }
        }

        private void ButtonCloseMenuc_Click(object sender, RoutedEventArgs e)
        {       
            ButtonOpenMenuc.Visibility = Visibility.Visible;
            ButtonCloseMenuc.Visibility = Visibility.Collapsed;
        }

        private void ButtonOpenMenuc_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenuc.Visibility = Visibility.Collapsed;
            ButtonCloseMenuc.Visibility = Visibility.Visible;
        }

        private void btnMinimizar_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void Border_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void ListViewItem_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            var item = sender as ListViewItem;

            if (item != null && item.IsSelected)
            {
                  frmHome.Visibility = Visibility.Collapsed;
                  frmJuegosCliente.Visibility = Visibility.Collapsed;
                  frmRegistroVenta.Visibility = Visibility.Collapsed;
                if (item ==btnVideojuegosDelCliente)
                {
                    lbVideojuegosDeUsuario.Items.Clear();
                  
                    frmJuegosCliente.Visibility = Visibility.Visible;

                    Int32 contador = 0;

                    foreach (CVideojuego objvideojuego in objsistema.ListaVideojuegosDeUsuario(LOGIN.Usuario))
                    {

                        if (objsistema.ListaVideojuegosDeUsuario(LOGIN.Usuario) != null)
                        {
                            contador++;
                            lbVideojuegosDeUsuario.Items.Add(contador+ ") "+objvideojuego.nombre);
                        }
                        else
                        {
                            MessageBox.Show("Este usuario aún no tiene videojuegos");
                        }                      
                    }
                }
                else if (item==btnHome)
                {
               
                    frmHome.Visibility = Visibility.Visible;
                }
                else if (item == btnRegistroVentaDelCliente)
                {
                 
                    lstbxVideojuegos.Items.Clear();
                    frmRegistroVenta.Visibility = Visibility.Visible;


                    foreach (CVideojuego objvideojuego in CSistema.Listado_Videojuegos)
                    {
                        lstbxVideojuegos.Items.Add(objvideojuego.nombre);
                    }

                }
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            DispatcherTimer Timer = new DispatcherTimer();
            Timer.Interval = new TimeSpan(0, 0, 1);
            Timer.Tick += (s, a) =>
            {
                labelHora.Content = DateTime.Now.ToString("hh:mm:ss tt");
                labelFecha.Content = DateTime.Now.ToLongDateString();

            };
            Timer.Start();

            lblNombreUsuario.Content = LOGIN.Usuario;
        }

        private void btnCerrarTodo_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btnRegistrarVenta_Click(object sender, RoutedEventArgs e)
        {

            Int32 totalventa = 0;
            String videojuegosvendidos = null;
            CUsuario objusuario = new CUsuario();
            //if (txtDNI.Text.Equals(""))
            //{
            //    MessageBox.Show("Ingrese DNI del cliente.", "Mensaje", MessageBoxButton.OK, MessageBoxImage.Warning);
            //}
            //else
            //{

       

                objusuario.nombre = LOGIN.Usuario;
                objusuario.contrasenia = LOGIN.Contraseña;

                bool v1 = false;
                bool v2 = false;
                foreach (String nombrevideojuego in lstbxVideojuegos.SelectedItems)
                {
                    CVideojuego objvideojuego = CSistema.Listado_Videojuegos.Find(delegate(CVideojuego value) { return value.nombre.Equals(nombrevideojuego); });
                    if (objsistema.ExisteUsuario(objusuario.nombre, objvideojuego.nombre) == false && objvideojuego.cantidad > 0)
                    {
                        objsistema.RegistrarVenta(objusuario, objvideojuego.nombre);
                        totalventa += objvideojuego.precioventa;
                        objsistema.RegistrarUsuario(objusuario, objvideojuego.nombre);
                        videojuegosvendidos += (objvideojuego.nombre + ", ");

                        v1 = true;
                    }
                    else if ((objsistema.ExisteUsuario(objusuario.nombre, objvideojuego.nombre) == true))
                    {
                        v1 = false;
                        MessageBox.Show("No puede comprar más de un juego del mismo nombre.", "Mensaje", MessageBoxButton.OK, MessageBoxImage.Warning);
                        v2 = false;
                    }
                    else if (objvideojuego.cantidad == 0)
                    {
                        v1 = false;
                        v2 = false;
                        MessageBox.Show("El juego " + objvideojuego.nombre + " está fuera de stock.", "Mensaje", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    if (objvideojuego.cantidad > 0)
                    {
                        objvideojuego.cantidad--;
                    }
                }
                if ((v1 == true && v2 == false))
                {
                    MessageBox.Show("Se realizó correctamente la venta de los juegos: " + videojuegosvendidos + "\nValor total: " + totalventa + " soles");
                }
              
                totalventa = 0;
                videojuegosvendidos = null;
                lstbxVideojuegos.SelectedIndex = -1;
                   

        }












    }
}
