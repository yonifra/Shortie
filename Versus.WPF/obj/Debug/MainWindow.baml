   M S B A M L   `   `   `  ����E  AVersus.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:FiveMin.WPF.ViewModelsFiveMin.WPF.ViewModels  5   	   ;"clr-namespace:FiveMin.WPF.ControlsFiveMin.WPF.Controls  5   	   Q MVersus.Portable, Version=1.0.6048.41532, Culture=neutral, PublicKeyToken=null^@clr-namespace:FiveMin.Portable.Entities;assembly=Versus.PortableFiveMin.Portable.Entities 5   	       FiveMin.WPF.MainWindow   5   	   U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ;
viewModels$clr-namespace:FiveMin.WPF.ViewModels     5   	   7controls"clr-namespace:FiveMin.WPF.Controls     5   	   V	entities1@clr-namespace:FiveMin.Portable.Entities;assembly=Versus.Portable     5   	     � Title$  FiveMin Editor��5   	   $	��450��6    $	��625��6-    � DataContext 5      *   $FiveMin.WPF.ViewModels.MainViewModel  5	   
   .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $
��Auto �6   �� 5      $	��120 �6   .+�5   
   �� .@�5      �� $��Videos��6   .��5      �  5      �� 5      $
��Auto �6(   �� 5      .+�5      *   $FiveMin.WPF.Controls.AddVideoControl  �� 5      -   5         ��Name$ 
VideosList��5   ,   $��1��6    � ToolTip$ Videos��6@   $��Stretch=�6Q   $��2��6�   ��6v   �� *Videos+��5      �� 5       �� DataType,  &FiveMin.Portable.Entities.FiveMinVideo"  6+   .R�5   "   �  � ColumnDefinitions 5   &   �� 5    *   �� 5!   *   $
��Auto �6;   .+�5#   &   ��  �� Orientation$ Vertical=�61   $��5q�6H   .+�5$   *   �� $
��Bold"�6J   ��64   �� *Name+ 5%   .   �� 5&   2   ��68   �� *BackdropUrl+5(   +   �� 5)   *   ��64   �� *Description+�� 5*   *   $��Italic$�6N   ��64   �� *
Category+6N   5+   '   �� 5-   &   $
��Edit��6-   $��1��6<   ��6L   �� *EditCommand+��6l   �� 5.   #   5/      51      52      53      �� 54      $��
Categories��6   .��55      �  56      �� 57      $
��Auto �6(   �� 58      .+�5;      -   'FiveMin.WPF.Controls.AddCategoryControl  �� 5<      -   5        $ CategoriesList��5<   ,   $��1��6   $ 
Categories��6D   $��Stretch=�6Y   ��6~   �� *
Categories+��5=      �� 5>      (  "FiveMin.Portable.Entities.Category"  6+   .R�5?   "   � $��Stretch=�6'    5@   &   �� 5A   *   �� 5B   *   $
��Auto �6;   .+�5E   &   �� $ Vertical=�61   $��5q�6H   .+�5F   *   �� $
��Bold"�6J   ��64   �� *Name+ 5G   .   �� 5H   2   ��68   �� *BackdropUrl+5J   +   �� 5K   *   ��64   �� *Description+5L   '   �� 5N   &   $
��Edit��6-   $��1��6<   ��6L   �� *EditCommand+��6l   �� 5O   #   5P      5R      5S      5T      5U      �� 5W   
   $��1��6   $��Refresh All Data��6A   ��6   �� *RefreshCommand+6A   �� 5X   
   $��2��6    �� 
IsReadOnly . 	 �� TextWrapping$
	 Wrap=�6[   ��61   �� *ConsoleText+
 �� Mode$
 OneWay=�6[   5Y      5Z      