   M S B A M L   `   `   `  ����G  CPROTOTIPO-02, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:PROTOTIPO_02PROTOTIPO_02  5   	       PROTOTIPO_02.MENUc   5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5
   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:PROTOTIPO_02     5   	   -   5           MaterialDesignBody#���   5   	     MaterialDesignPaper#���  5   	   $��Medium"�5   	   $��14(�5   	   $X��Rpack://application:,,,/MaterialDesignThemes.Wpf;component/Resources/Roboto/#Roboto)�5   	   $	��630��5      $
��1000��6&     � WindowStyle$
  None=�63    � 
ResizeMode$ NoResize=�6F    � WindowStartupLocation$ CenterScreen=�6\   
������� � 	Resources 5        MenuOpen �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	MenuClose��%�  &	       &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 70Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 60Q�69   5      5      5       � Triggers 5      :� 5    
   	 :� RoutedEvent$	 ButtonBase.Click��6   
 :� 
SourceName$
 ButtonOpenMenuc��66   .[�5!      �� #��[ 6   5"      :� 5#   
   $	 ButtonBase.Click��6   $
 ButtonCloseMenuc��66   .[�5$      �� #��[ 6   5%      .��5(      � ��5)   
   �� 5*       �� ImageSource$ Recursos/FONDO.jpg��6    j� Stretch$ UniformToFill=�6:    � RowDefinitions 5.   
   �� 5/      $��30 �6   �� 50      $��* �6   .+�56   
   �� 
���   �6   �� 57   
   -   5        $��0��57      
������ $��1��6h   ._�58      � .+�59      (  "MaterialDesignThemes.Wpf.ColorZone     Mode$ PrimaryDark=�6+   
���   �.��5:      �� .+�5;      �� -   5         ��Name$ btnCerrarTodo��5;   !   $��x��68   $��Right=�6D   $��0,0,10,0q�6`   $	��Top=�6r   $��30��6�   $��30��6�   $��2��6�   $��0q�6�   $��22(�6�   $��Verdana)�6�   $��Center=�6  $��Stretch=�62  ��6�   Z� ��6�   Z� 6U  5<      5=      �� 5>      -   5        $ btnMinimizar��5>      $��-��6/   $��Right=�6;   $��0,0,40,0q�6W   $	��Top=�6i   $��30��6�   $��30��6�   $��0q�6�   $��22(�6�   $��Verdana)�6�   $��Center=�6�   ��6�   Z� ��6�   Z� 6  5?      5@      � 5B   
   $��1��6   ���	#FF272626$��	0,0,0,540q�63   $��2��6F   .+�5D      �� $
��MENU��6   $��Center=�6$   $��Center=�6A   $��22(�6\   
�������6j   �� 5E      $��Center=�6    �� Orientation$ 
Horizontal=�64   $��Right=�6M   .+�5F      �� $��Cliente��6   $��Center=�6+   $��14(�6F   ���	#FFC5BCBC6T   '  !MaterialDesignThemes.Wpf.PopupBox  5G      $��5q�6*      PlacementMode$ BottomAndAlignRightEdges=�65      	StaysOpen .  
�������   PopupContent. 5H      �� .+�5I      �� $��Opciones��6!   �� 5J      $��Ayuda��6!   �� 5K      �� 5L      -   5        $ 	BtnCerrar��5L   !   $��Cerrar sesión��64   6L   5M      5N      5O      �� 5P      -   5         ��Name$ lblNombreUsuario��5P      $��Label��6.   $��Right=�6>   $��
0,17,100,0q�6Z   $	��Top=�6n   $��14(�6�   ���	#FFC5BCBC6�   5Q      � 5S   
   -   5         �Name$ GridMenu��5S      $��60��6!   $
��Left=�6,   ���	#FF272626$��1��6^   .+�5T      �� .+�5U      � $	��150��6   ��5V      �� 5W      $ Recursos/LOGO.jpg.png��6%   $ UniformToFill=�6I   .+�5Y      �� -   5        $ ButtonCloseMenuc��5Y      $��60��67   $��60��6B   $	��Top=�6{   $��Right=�6�   $y�	Collapsed=�6�   ��6N   Z� ��6d   Z� .��5Z      '  !MaterialDesignThemes.Wpf.PackIcon  
��������  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ 	ArrowLeft=�6E   $��25��6V   $��25��6a   5[      �� 5\      -	   5        $ ButtonOpenMenuc��5\      $��60��66   $
��Auto��6A   $��Right=�6|   $��	0,0,0,110q�6�   ��6O   Z� ��6e   Z� .��5]        
�������$
 Menu=�6E   $��25��6Q   $��25��6\   5^      5_      �� 5`      $��Disabled=�6   ���	#FFC5BCBC.@�5a      �� -
   5         ��Name$ btnHome��5a   /   $��60��6#   .��5b      �� $ 
Horizontal=�6%   .+�5c        $
 Home=�66   $��25��6B   $��25��6M   $��10q�6Y   $��Center=�6e   ���	#FF9131F16�   �� 5d      $��Inicio��6(   $��Center=�66   $
��5,10q�6Q   5e      5f      �� 5g      -   5        $  btnRegistroVentaDelCliente��5g   /   $��60��6#   .��5h      �� $ 
Horizontal=�6%   .+�5i        $ ShoppingCart=�66   $��25��6J   $��25��6U   $��10q�6a   $��Center=�6m   ���	#FF9131F16�   �� 5j      $��Comprar��6(   $��Center=�67   $
��5,10q�6R   5k      5l      �� 5m      -   5        $ btnVideojuegosDelCliente��5m   /   $��60��6#   .��5n      �� $ 
Horizontal=�6%   .+�5o        $ 	Extension=�66   $��25��6G   $��25��6R   $��10q�6^   $��Center=�6j   ���	#FF9131F16�   �� 5p      $��
Mis juegos��6(   $��Center=�6:   $
��5,10q�6U   5q      5r      ��5u      �� 5v       �� 
TargetType" ��6    .�5w      -   5        5x      5{      5      5�      � 5�   
   -   5        $ frmJuegosCliente��5�      $��1��6*   $��1��67   $��298,103,115,91q�6H   $y�	Collapsed=�6`   $��Center=�6w   
�������$	��587��6�   .+�5�      � $��32��6   $	��Top=�6   ���	#FF272626.+�5�      �� $��
Mis juegos��6   $��Center=�6/   $��Center=�6L   $��10q�6g   $��12(�6s   
�������6�   5�      �� 5�      -   5         ��Name$ lbVideojuegosDeUsuario��5�      $
��Left=�67   $	��327��6R   $��	82,59,0,0q�6_   $	��Top=�6r   $	��426��6�   
�������6�   5�      � 5�   
   -   5        $ frmHome��5�      $��1��6    $��249,97,58,76q�6-   $��Center=�6C   $y�Visible=�6`   $	��693��6v   .+�5�      �� -   5        $ 	labelHora��5�      $��Right=�6*   $��	0,60,10,0q�6F   $	��Top=�6Y   $	��129��6q   $	��673��6~   ���	#FFC5BCBC$	��100(�6�   �� 5�      -   5        $ 
labelFecha��5�      $
��Left=�6*   $��
92,227,0,0q�6E   $	��Top=�6Y   $	��131��6q   $	��591��6~   ���	#FFC5BCBC$��36(�6�   5�      �� 5�   
   -   5        $ label��5�      $��Gamers4U��6   $
��Left=�62   $��6,3,0,0q�6M   $	��Top=�6_   $��25��6w   $��83��6�   ���	#FF686564$��Segoe UI Black)�6�   � 5�   
   -   5        $ frmRegistroVenta��5�      $��1��6)   $��298,103,115,91q�66   $��Center=�6N   $y�	Collapsed=�6k   
�������$	��587��6�   .+�5�      � $��32��6   $	��Top=�6   ���	#FF272626.+�5�      �� $��COMPRAR VIDEOJUEGO��6   $
��Left=�66   $��Center=�6Q   $��10q�6l   $��12(�6x   
�������6�   5�      �� 5�      -   5        $ lstbxVideojuegos��5�      $
��Left=�60   $	��219��6K   $��
152,84,0,0q�6X   $	��Top=�6l   $	��308��6�   
������� �� SelectionMode$ Multiple=�6�   
���   �6�   �� 5�      -   5        $ label1��5�      $)��#Selecciona el videojuego a comprar:��6$   $
��Left=�6R   $��
152,53,0,0q�6m   $	��Top=�6�   $��27��6�   $	��246��6�   �� 5�      -   5        $ btnRegistrarVenta��5�      $��Comprar��60   $
��Left=�6B   $��152,332,0,0q�6]   $	��Top=�6r   $	��308��6�   ���	#FF673AB76�   5�      5�      5�      