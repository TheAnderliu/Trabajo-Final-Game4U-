   M S B A M L   `   `   `  ����G  CPROTOTIPO-02, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:PROTOTIPO_02PROTOTIPO_02  5   	       PROTOTIPO_02.MENU   5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5
   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:PROTOTIPO_02     5   	   -   5           MaterialDesignBody#���   5   	     MaterialDesignPaper#���  5   	   $��Medium"�5   	   $��14(�5   	   $X��Rpack://application:,,,/MaterialDesignThemes.Wpf;component/Resources/Roboto/#Roboto)�5   	   $	��630��5      $
��1000��6'     � WindowStyle$
  None=�64    � 
ResizeMode$ NoResize=�6G    � WindowStartupLocation$ CenterScreen=�6]   
������� � 	Resources 5        MenuOpen �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	MenuClose��%�  &	       &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 70Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 60Q�69   5      5      5       � Triggers 5      :� 5    
   	 :� RoutedEvent$	 ButtonBase.Click��6   
 :� 
SourceName$
 ButtonOpenMenu��66   .[�5!      �� #��[ 6   5"      :� 5#   
   $	 ButtonBase.Click��6   $
 ButtonCloseMenu��66   .[�5$      �� #��[ 6   5%      .��5(      � ��5)   
   �� 5*       �� ImageSource$ Recursos/FONDO.jpg��6    j� Stretch$ UniformToFill=�6:    � RowDefinitions 5-   
   �� 5.      $��30 �6   �� 5/      $��* �6    � ColumnDefinitions 53   
   �� 56      $
��Auto �6   �� 57      $��* �6   .+�5;   
   �� 
���   �6   �� 5<   
   -   5        $��0��5<      
������ $��1��6h   ._�5=      � .+�5>      (  "MaterialDesignThemes.Wpf.ColorZone     Mode$ PrimaryDark=�6+   
���   �.��5?      �� .+�5@      �� -   5         ��Name$ 	btnCerrar��5@   !   $��x��64   $��Right=�6@   $��0,0,10,0q�6\   $	��Top=�6n   $��30��6�   $��30��6�   $��2��6�   $��0q�6�   $��22(�6�   $��Verdana)�6�   $��Center=�6
  $��Stretch=�6.  ��6�   Z� ��6�   Z� 6Q  5A      5B      �� 5C      -   5        $ btnMinimizar��5C      $��-��6/   $��Right=�6;   $��0,0,40,0q�6W   $	��Top=�6i   $��30��6�   $��30��6�   $��0q�6�   $��22(�6�   $��Verdana)�6�   $��Center=�6�   ��6�   Z� ��6�   Z� 6  5D      5E      � 5G   
   $��1��6   ���	#FF272626$��	0,0,0,540q�63   $��2��6F   .+�5I      �� $
��MENU��6   $��Center=�6$   $��Center=�6A   $��22(�6\   
�������6j   �� 5J      $��Center=�6    �� Orientation$ 
Horizontal=�64   $��Right=�6M   .+�5K      �� $��Admin��6   $��Center=�6)   $��14(�6D   ���	#FFC5BCBC6R   '  !MaterialDesignThemes.Wpf.PopupBox  5L      $��5q�6*      PlacementMode$ BottomAndAlignRightEdges=�65      	StaysOpen .  
�������   PopupContent. 5M      �� .+�5N      �� $��Opciones��6!   �� 5O      $��Ayuda��6!   �� 5P      �� 5Q      -   5        $ 	BtnCerrar��5Q   !   $��Cerrar sesión��64   6L   5R      5S      5T      5U      � 5V   
   -   5         �Name$ GridMenu��5V      $��1��6!   $��55��6.   $
��Left=�69   ���	#FF272626$��2��6k   .+�5W      �� .+�5X      � $	��150��6    J� Opacity$
 0.95Q�6$   ��5Y      �� 5Z      $ Recursos/LOGO.jpg.png��6%   $ UniformToFill=�6I   .+�5\      �� -   5        $ ButtonCloseMenu��5\      $��60��66   $��60��6A   $	��Top=�6z   $��Right=�6�   $y�	Collapsed=�6�   ��6M   Z� ��6c   Z� .��5]      '  !MaterialDesignThemes.Wpf.PackIcon  
��������  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ 	ArrowLeft=�6E   $��25��6V   $��25��6a   5^      �� 5_      -   5        $ ButtonOpenMenu��5_      $��55��65   $
��Auto��6@   $��Right=�6|   $��	0,0,0,110q�6�   ��6N   Z� ��6d   Z� .��5`        
�������$
 Menu=�6E   $��25��6Q   $��25��6\   5a      5b      �� 5d      $��Disabled=�6   ���	#FFC5BCBC.@�5f      �� -	   5         ��Name$ btnHome��5f   /   $��60��6#   .��5h      �� $ 
Horizontal=�6%   .+�5i        $
 Home=�66   $��25��6B   $��25��6M   $��10q�6Y   $��Center=�6e   ���	#FF9131F16�   �� 5j      $��Inicio��6(   $��Center=�66   $
��5,10q�6Q   5k      5m      �� 5o      -
   5        $ btnRegistroVideojuego��5o   /   $��60��6#   .��5p      �� $ 
Horizontal=�6%   .+�5q        $ NoteAdd=�66   $��25��6E   $��25��6P   $��10q�6\   $��Center=�6h   ���	#FF9131F16�   �� 5r      $��Registrar videojuego��6(   $��Center=�6D   $
��5,10q�6_   5s      5t      �� 5x      -   5        $ btnRegistroVenta��5x   /   $��60��6#   .��5y      �� $ 
Horizontal=�6%   .+�5z        $ MoneyUsd=�66   $��25��6F   $��25��6Q   $��10q�6]   $��Center=�6i   ���	#FF9131F16�   �� 5{      $��Registrar venta��6(   $��Center=�6?   $
��5,10q�6Z   5|      5}      �� 5      -   5        $ btnConsultarStock��5   /   $��60��6#   .��5�      �� $ 
Horizontal=�6%   .+�5�        $ 
Visibility=�66   $��25��6H   $��25��6S   $��10q�6_   $��Center=�6k   ���	#FF9131F16�   �� 5�      $��Consultar stock��6(   $��Center=�6?   $
��5,10q�6Z   5�      5�      �� 5�      -   5        $ btnMasyMenosVendidos��5�   /   $��60��6#   .��5�      �� $ 
Horizontal=�6%   .+�5�        $ SwapVertical=�66   $��25��6J   $��25��6U   $��10q�6a   $��Center=�6m   ���	#FF9131F16�   �� 5�      $��TOP 10��6(   $��Center=�66   $
��5,10q�6Q   5�      5�      �� 5�      -   5        $ btnListarPorGanancia��5�   /   $��60��6#   .��5�      �� $ 
Horizontal=�6%   .+�5�        $
 Poll=�66   $��25��6B   $��25��6M   $��10q�6Y   $��Center=�6e   ���	#FF9131F16�   �� 5�      $��Listar por ganancias��6(   $��Center=�6D   $
��5,10q�6_   5�      5�      ��5�      �� 5�       �� 
TargetType" ��6    .�5�      -   5        5�      5�      5�      5�      � 5�   
   $��1��6   $��1��6   $��0,60,0,0q�6,   $��32��6>   $	��Top=�6J   $��Center=�6b   5�      � 5�   
   -   5        $ frmRegistroVideojuego��5�      $��1��6.   $��1��6;   $��249,97,164,97q�6K   $��Center=�6b   $y�	Collapsed=�6   
�������$	��587��6�   .+�5�      � $��32��6   $	��Top=�6   ���	#FF272626$��Center=�6N   $	��587��6k   .+�5�      �� $��REGISTRAR VIDEOJUEGO��6   $
��Left=�68   $��Center=�6S   $��10q�6n   $��12(�6z   
�������6�   5�      �� 5�      -   5         ��Name$ 	lblNombre��5�      $��Nombre:��6'   $
��Left=�69   $��	44,64,0,0q�6T   $	��Top=�6g   �� 5�      -   5        $ 	lblCodigo��5�      $��Codigo:��6'   $
��Left=�69   $��
44,104,0,0q�6T   $	��Top=�6h   �� 5�      -   5        $ 	lblGenero��5�      $��Genero:��6'   $
��Left=�69   $��
44,144,0,0q�6T   $	��Top=�6h    J� RenderTransformOrigin$ -0.111,0.046&�6�   �� 5�      -   5        $ lblPlataforma��5�      $��Plataforma:��6+   $
��Left=�6A   $��
44,188,0,0q�6\   $	��Top=�6p   $ -0.111,0.046&�6�   �� 5�      -   5        $ 	lblPrecio��5�      $��Precio de venta:��6'   $
��Left=�6B   $��
44,228,0,0q�6]   $	��Top=�6q   $ -0.111,0.046&�6�   �� 5�      -   5        $ lblCantidad��5�      $��	Cantidad:��6)   $
��Left=�6=   $��
44,268,0,0q�6X   $	��Top=�6l   $ -0.111,0.046&�6�   �� 5�      -   5         ��Name$ 
txtNombreV��5�      $
��Left=�6*   $��25��6E   $��
168,64,0,0q�6Q    �� TextWrapping$
 Wrap=�6e   $�� ��6y   $	��Top=�6�   $	��334��6�   
���   �6�   �� 5�      -   5        $ 
txtCodigoV��5�      $
��Left=�6*   $��25��6E   $��168,104,0,0q�6Q   $
 Wrap=�6f   $�� ��6z   $	��Top=�6�   $	��334��6�   
���   �6�   �� 5�      -   5         ��Name$ 	cbGeneroV��5�      $
��Left=�6*   $��168,144,0,0q�6E   $	��Top=�6Z   $	��334��6r   
���   �.@�5�      �� .��6   Accion6'   �� 5�      .��6   
Aventura6)   �� 5�      .��6   
Carreras6)   �� 5�      .��6   Casual6'   �� 5�      .��6   
Deportes6)   �� 5�      .��6   
Estrategia6+   �� 5�      .��6   Indie6&   �� 5�      .��6   Multijugador6-   �� 5�      .��6   Rol6$   �� 5�      .��6   Simuladores6,   5�      �� 5�      -   5        $ cbPlataformaV��5�      $
��Left=�6.   $��168,188,0,0q�6I   $	��Top=�6^   $	��334��6v   
���   �.@�5�      �� .��6   
Nintendo6)   �� 5�      .��6   Play Station6-   �� 5�      .��6   PC6#   �� 5�      .��6   Xbox6%   5�      �� 5�      -   5        $ 
txtPrecioV��5�      $
��Left=�6*   $��25��6E   $��168,228,0,0q�6Q   $
 Wrap=�6f   $�� ��6z   $	��Top=�6�   $	��334��6�   
���   �6�   �� 5�      -   5        $ txtCantidadV��5�      $
��Left=�6,   $��25��6G   $��168,268,0,0q�6S   $
 Wrap=�6h   $�� ��6|   $	��Top=�6�   $	��334��6�   
���   �6�   �� 5�      -   5        $ btnRegistrarVIdeojuego��5�      $��	Registrar��65   $
��Left=�6I   $��168,335,0,0q�6d   $	��Top=�6y   $	��266��6�   ��5�      �� 5�       �� Color$ 	#FF673AB7��6&   5�      5�      � 5�   
   -   5        $ frmRegistroVenta��5�      $��1��6)   $��1��66   $��249,97,164,97q�6F   $��Center=�6]   $y�	Collapsed=�6z   
�������$	��587��6�   .+�5�      � $��32��6   $	��Top=�6   ���	#FF272626.+�5�      �� $��REGISTRAR VENTA��6   $
��Left=�63   $��Center=�6N   $��10q�6i   $��12(�6u   
�������6�   5�      �� 5�      -   5        $ label��5�      $��DNI :��6#   $
��Left=�63   $��
57,151,0,0q�6N   $	��Top=�6b   �� 5�      -    5        $ txtDNI��5�      $
��Left=�6&   $��23��6A   $��104,154,0,0q�6M   $
 Wrap=�6b   $	��Top=�6w   $	��151��6�   
���   �6�   �� 5�      -!   5          ��Name$  lstbxVideojuegos��5�      $
��Left=�60   $	��222��6K   $��
313,83,0,0q�6X   $	��Top=�6l   $	��220��6�   
�������! �� SelectionMode$! Multiple=�6�   
���   �6�   �� 5�      -"   5        $ label1��5�      $��Lista de videojuegos :��6$   $
��Left=�6E   $��
313,52,0,0q�6`   $	��Top=�6t   �� 5�      -#   5        $ btnRegistrarVenta��5�      $��	Registrar��60   $
��Left=�6D   $��152,332,0,0q�6_   $	��Top=�6t   $	��308��6�   ���	#FF673AB76�   5�      � 5�   
   -$   5        $ frmConsultarStock��5�      $��1��6*   $��1��67   $��249,97,164,97q�6G   $��Center=�6^   $y�	Collapsed=�6{   
�������$	��587��6�   .+�5�      � $��32��6   $	��Top=�6   ���	#FF272626.+�5�      �� $��CONSULTA DE STOCK��6   $
��Left=�65   $��Center=�6P   $��10q�6k   $��12(�6w   
�������6�   5�      �� 5�      -%   5        $ labelnombre��5�      $0��*Ingrese nombre del videjuego a consultar :��6)   $
��Left=�6^   $��	38,68,0,0q�6y   $	��Top=�6�   �� 5�      -&   5        $ cbVideojuegos��5�      $
��Left=�6.   $��
324,66,0,0q�6I   $	��Top=�6]   $	��153��6u   
���   �6�   �� 5�      -'   5        " ��Name$" groupBox��5�      $��Stock :��6)   $
��Left=�6:   $��
53,131,0,0q�6U   $	��Top=�6i   $	��219��6�   $	��489��6�   .��5�      �� -(   5        $  lbStock��5�      $	��136��6+   $��0,10,0,0q�68   $��Center=�6J   $��Center=�6g   $	��422��6�   
�������$��70(�6�   
���   �5�      5�      �� 5�      -)   5        $ btnStock��5�      $
��Left=�6(   $��
495,68,0,0q�6C   $	��Top=�6W   $��57��6o   $��27��6z   .��5�        
�������$ Search=�6=   $��25��6K   $��20��6V   5�      5�      � 5�   
   -*   5        $ frmMasYMenosVendidos��5�      $��1��6-   $��1��6:   $��249,97,164,97q�6J   $��Center=�6a   $y�	Collapsed=�6~   
�������$	��587��6�   .+�5�      � $��32��6   $	��Top=�6   ���	#FF272626.+�5�      �� $��TOP 10��6   $
��Left=�6*   $��Center=�6E   $��10q�6`   $��12(�6l   
�������6z   5�      �� 5�      $+��%Los 10 primeros juegos mas vendidos :��6   $
��Left=�6E   $��	17,66,0,0q�6`   $	��Top=�6s   �� 5�      $-��'Los 10 primeros juegos menos vendidos :��6   $
��Left=�6G   $��
306,66,0,0q�6b   $	��Top=�6v   �� 5�      -+   5        $  lbMasVendidos��5�      $
��Left=�6-   $	��236��6H   $��
26,101,0,0q�6U   $	��Top=�6i   $	��215��6�   
�������6�   �� 5      -,   5        $  lbMenosVendidos��5      $
��Left=�6/   $	��236��6J   $��345,101,0,0q�6W   $	��Top=�6l   $	��215��6�   
�������6�   �� 5     --   5        # ��Name$# gridSplitter��5     $
��Left=�61   $	��294��6L   $��
287,58,0,0q�6Y   $	��Top=�6m   $��14��6�   ���	#FF4F00DC6�   5     � 5  
   -.   5        $ frmHome��5     $��1��6    $��1��6-   $��249,97,77,63q�6=   $��Center=�6S   $y�Visible=�6p   $	��674��6�   .+�5     �� -/   5        $ 	labelHora��5     $��Right=�6*   $��	0,70,10,0q�6F   $	��Top=�6Y   $	��129��6q   $	��654��6~   ���	#FFC5BCBC$	��100(�6�   �� 5     -0   5        $ 
labelFecha��5     $
��Left=�6*   $��
37,227,0,0q�6E   $	��Top=�6Y   $	��122��6q   $	��577��6~   ���	#FFC5BCBC$��36(�6�   5     � 5  
   -1   5        $ frmListarPorGanancia��5     $��1��6.   $��1��6;   $��249,97,164,97q�6K   $��Center=�6b   $y�	Collapsed=�6   
�������$	��587��6�   .+�5     � $��32��6   $	��Top=�6   ���	#FF272626.+�5     �� $��	Ganancias��6   $
��Left=�6-   $��Center=�6H   $��10q�6c   $��12(�6o   
�������6}   5     �� 5     $$��De mayor a menor recaudacion :��6   $
��Left=�6=   $��
114,54,0,0q�6X   $	��Top=�6l   �� 5     -2   5        $  lbVideojuegosPorGanancia��5     $
��Left=�69   $	��276��6T   $��114,100,0,0q�6a   $	��Top=�6v   $	��351��6�   
�������6�   5     �� 5  
   -3   5        $ label2��5     $��Gamers4U��6    $��1��63   $
��Left=�6C   $	��Top=�6^   $��25��6v   $��5,2,0,0q�6�   $��83��6�   ���	#FF686564$��Segoe UI Black)�6�   5     5     