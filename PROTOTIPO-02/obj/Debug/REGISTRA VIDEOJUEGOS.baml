   M S B A M L   `   `   `  ����G  CPROTOTIPO-02, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:PROTOTIPO_02PROTOTIPO_02  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	   '    !PROTOTIPO_02.REGISTRA_VIDEOJUEGOS   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:PROTOTIPO_02     5   	   9System&clr-namespace:System;assembly=mscorlib     5   	     � Title$  REGISTRA_VIDEOJUEGOS��5	   	   $	��386��6&   $	��595��63    � WindowStyle$
 None=�6?    � 
ResizeMode$ NoResize=�6R    � WindowStartupLocation$ CenterScreen=�6h   .��5      � 
�������.+�5   
   � $��32��6   $	��Top=�6   ���	#FF272626.+�5      �� $��REGISTRO DE VIDEOJUEGOS��6   $
��Left=�67   $��Center=�6R   $��10q�6m   $��12(�6y   
�������6�   5      �� 5   
   -   5         ��Name$ 	lblNombre��5      $��Nombre:��6#   $
��Left=�65   $��	44,64,0,0q�6P   $	��Top=�6c   �� 5   
   -   5        $ 	lblCodigo��5      $��Codigo:��6#   $
��Left=�65   $��
44,104,0,0q�6P   $	��Top=�6d   �� 5   
   -   5        $ 	lblGenero��5      $��Genero:��6#   $
��Left=�65   $��
44,144,0,0q�6P   $	��Top=�6d    J� RenderTransformOrigin$ -0.111,0.046&�6|   �� 5   
   -   5        $ lblPlataforma��5      $��Plataforma:��6'   $
��Left=�6=   $��
44,188,0,0q�6X   $	��Top=�6l   $ -0.111,0.046&�6�   �� 5   
   -   5        $ 	lblPrecio��5      $��Precio:��6#   $
��Left=�65   $��
44,228,0,0q�6P   $	��Top=�6d   $ -0.111,0.046&�6|   �� 5   
   -   5        $ lblCantidad��5      $��	Cantidad:��6%   $
��Left=�69   $��
44,268,0,0q�6T   $	��Top=�6h   $ -0.111,0.046&�6�   �� 5   
   -   5         ��Name$ 	txtNombre��5      $
��Left=�6%   $��23��6@   $��
143,64,0,0q�6L    �� TextWrapping$
 Wrap=�6`   $�� ��6t   $	��Top=�6|   $	��171��6�   �� 5   
   -   5        $ 	txtCodigo��5      $
��Left=�6%   $��23��6@   $��143,104,0,0q�6L   $
 Wrap=�6a   $�� ��6u   $	��Top=�6}   $	��171��6�   �� 5   
   -	   5         ��Name$ cbGenero��5      $
��Left=�6%   $��143,144,0,0q�6@   $	��Top=�6U   $	��171��6m   .@�5      ��
Accion��6$   ��5      Aventura��6&   ��5      Carreras��6&   ��5      
Casual��6$   ��5      Deportes��6&   ��5      
Estrategia��6(   ��5      	Indie��6#   ��5       Multijugador��6*   ��5!      Rol��6!   ��5"      Simuladores��6)   5#      �� 5$   
   -
   5        $ cbPlataforma��5$      $
��Left=�6)   $��143,188,0,0q�6D   $	��Top=�6Y   $	��171��6q   .@�5%      ��Nintendo��6&   ��5&      Play Station��6*   ��5'      PC��6    ��5(      Xbox��6"   5)      �� 5*   
   -   5        $ 	txtPrecio��5*      $
��Left=�6%   $��23��6@   $��143,228,0,0q�6L   $
 Wrap=�6a   $�� ��6u   $	��Top=�6}   $	��171��6�   �� 5+   
   -   5        $ txtCantidad��5+      $
��Left=�6'   $��23��6B   $��143,268,0,0q�6N   $
 Wrap=�6c   $�� ��6w   $	��Top=�6   $	��171��6�   �� 5,   
   -   5        	 ��Name$	 btnRegistrar��5,      $��	Registrar��6'   $
��Left=�6;   $��143,329,0,0q�6V   $	��Top=�6k   $��92��6�   5.      5/      