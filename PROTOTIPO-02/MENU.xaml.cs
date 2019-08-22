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
    /// Lógica de interacción para MENU.xaml
    /// </summary>
    public partial class MENU : Window
    {
        CSistema objsistema = new CSistema();
        public MENU()
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

        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenu.Visibility = Visibility.Visible;
            ButtonCloseMenu.Visibility = Visibility.Collapsed;
        }

        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenu.Visibility = Visibility.Collapsed;
            ButtonCloseMenu.Visibility = Visibility.Visible;
        }

        private void Border_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void btnCerrar_Click_1(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();         
        }

        private void btnMinimizar_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void ListViewItem_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            var item = sender as ListViewItem;

           
            if (item != null && item.IsSelected)
            {
                frmRegistroVideojuego.Visibility = Visibility.Collapsed;
                frmRegistroVenta.Visibility = Visibility.Collapsed;
                frmConsultarStock.Visibility = Visibility.Collapsed;
                frmMasYMenosVendidos.Visibility = Visibility.Collapsed;
                frmHome.Visibility = Visibility.Collapsed;
                frmListarPorGanancia.Visibility = Visibility.Collapsed;  

                if (item ==btnRegistroVideojuego)
                {
                    txtPrecioV.Text = "";
                    txtNombreV.Text = "";
                    txtCodigoV.Text = "";
                    txtCantidadV.Text = "";
                    cbGeneroV.Text = "";
                    cbPlataformaV.Text = "";

                    frmRegistroVideojuego.Visibility = Visibility.Visible;
                                   
                }
                else if (item ==btnRegistroVenta)
                {
                    txtDNI.Text = "";
                    lstbxVideojuegos.Items.Clear();
                    frmRegistroVenta.Visibility = Visibility.Visible;
    
                   
                    foreach (CVideojuego objvideojuego in CSistema.Listado_Videojuegos)
                    {
                        lstbxVideojuegos.Items.Add(objvideojuego.nombre);                       
                    }

                }
                else if (item== btnConsultarStock)
                {  
                    frmConsultarStock.Visibility = Visibility.Visible;
                  
                    if (CSistema.Listado_Videojuegos != null)
                    {
                        cbVideojuegos.DisplayMemberPath = "nombre";
                        cbVideojuegos.SelectedValue = "nombre";
                        cbVideojuegos.ItemsSource = CSistema.Listado_Videojuegos;
                    }
                }
                else if (item== btnMasyMenosVendidos)
                {
                    lbMasVendidos.Items.Clear();
                    lbMenosVendidos.Items.Clear();
              
                    frmMasYMenosVendidos.Visibility = Visibility.Visible;

                    if (CSistema.Listado_Videojuegos!=null)
                    {
                        Int32 contmasvendidos = 0;
                        Int32 contmenosvendidos = 0;
                       
                        foreach (CVideojuego objvideojuegoencontrado in objsistema.Lista10MasVendidos())
	                     {
                             if (contmasvendidos<=10)
                             {
                                 contmasvendidos++;
                                 lbMasVendidos.Items.Add(contmasvendidos+") "+objvideojuegoencontrado.nombre);                               
                             }                           
	                      }
                        foreach (CVideojuego objvideojuegoencontrado in objsistema.Lista10MenosVendidos())
                        {
                            if (contmasvendidos <= 10)
                            {
                                contmenosvendidos++;
                                lbMenosVendidos.Items.Add(contmenosvendidos + ") " + objvideojuegoencontrado.nombre);                               
                            }
                        }
                    }
                }
                else if (item==btnHome)
                {
          

                    frmHome.Visibility = Visibility.Visible;
                }
                else if (item==btnListarPorGanancia)
                {
             
                    frmListarPorGanancia.Visibility = Visibility.Visible;
               
                    lbVideojuegosPorGanancia.Items.Clear();
                    Int32 contvideojuegos = 0;
                    if (CSistema.Listado_Videojuegos!=null)
                    {
                        foreach (CVideojuego objvideojuegoencontrado in objsistema.ListaPorGanancia())
                        {
                            contvideojuegos++;
                            lbVideojuegosPorGanancia.Items.Add(contvideojuegos + ") " + objvideojuegoencontrado.nombre + "\nGanancia: " + (objvideojuegoencontrado.cantventas * objvideojuegoencontrado.precioventa) + " soles");
                        }
                    }
                }           
            }
        }
        private void btnRegistrarVideojuego_Click(object sender, RoutedEventArgs e)
        {

            CVideojuego objvideojuego = new CVideojuego();

            if (txtCantidadV.Text.Equals("") || txtCodigoV.Text.Equals("") || txtNombreV.Text.Equals("") || txtPrecioV.Text.Equals("") || cbGeneroV.Text.Equals("") || cbPlataformaV.Text.Equals(""))
            {
                MessageBox.Show("No se a ingresado datos.", "Mensaje", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
            else 
 {
                objvideojuego.codigo = Int32.Parse(txtCodigoV.Text);
                objvideojuego.nombre = txtNombreV.Text;
                objvideojuego.plataforma = cbPlataformaV.Text;
                objvideojuego.cantidad = Int32.Parse(txtCantidadV.Text);
                objvideojuego.precioventa = Int32.Parse(txtPrecioV.Text);
                objvideojuego.genero = cbGeneroV.Text;

                if (objsistema.ExisteVideojuego(txtNombreV.Text))
                {
                    MessageBox.Show("Este videojuego ya existe.", "Mensaje", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
                else
                {
                    objsistema.InsertarVideojuego(objvideojuego);
                    MessageBox.Show("Se registró correctamente.", "Mensaje", MessageBoxButton.OK, MessageBoxImage.Asterisk);
                    txtPrecioV.Text = "";
                    txtNombreV.Text = "";
                    txtCodigoV.Text = "";
                    txtCantidadV.Text = "";
                    cbGeneroV.Text = "";
                    cbPlataformaV.Text = "";
                }
            }
        }

        private void btnRegistrarVenta_Click(object sender, RoutedEventArgs e)
        {
            Int32 totalventa = 0;
            String videojuegosvendidos = null;
            CUsuario objusuario = new CUsuario();
            if (txtDNI.Text.Equals(""))
            {
                MessageBox.Show("Ingrese DNI del cliente.", "Mensaje", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
            else
            {
                objusuario.contrasenia = txtDNI.Text;
                objusuario.nombre = txtDNI.Text;
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
                        MessageBox.Show("El cliente no puede comprar más de un juego del mismo nombre.", "Mensaje", MessageBoxButton.OK, MessageBoxImage.Warning);
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
                    MessageBox.Show("Se realizó correctamente la venta de los juegos: " + videojuegosvendidos + "\nValor total: " + totalventa + " soles" );
                }
                txtDNI.Text = "";
                totalventa = 0;
                videojuegosvendidos = null;
                lstbxVideojuegos.SelectedIndex = -1;
            }          
        }

        private void btnStock_Click(object sender, RoutedEventArgs e)
        {        
            lbStock.Items.Clear();

            if (cbVideojuegos.Text.Equals(""))
            {
                MessageBox.Show("Seleccione un videojuego.", "Mensaje", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
            else
            {
                CVideojuego objvideojuego = CSistema.Listado_Videojuegos.Find(delegate(CVideojuego value) { return value.nombre.Equals(cbVideojuegos.Text); });
                lbStock.Items.Add(objvideojuego.cantidad.ToString());
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
            frmHome.Visibility = Visibility.Visible;
        }
    }
}
