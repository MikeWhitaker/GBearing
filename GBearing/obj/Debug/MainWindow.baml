   M S B A M L   `   `   `  ����C  ?GBearing, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:GBearingGBearing  5   	       GBearing.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:GBearing     5   	     � Title$  GBearing 0.1��5   	   $	��400��6   $	��350��6+   .��5
      �    GridNord#��[  6    � RowDefinitions 5   
   �� 5      $��6.66* �6   �� 5      $��4.33* �6   .+�5   
   �� -   5         ��Name$ 
tbStartLat��5      $��
20,50,10,0q�6&     TextBoxNord#��[ 6:    �� TextWrapping$
 Wrap=�6_   $��Latitude��6s   $��0��6�   $��23��6�   $	��Top=�6�   �� 5   
   -   5        $ 
tbStartLon��5      $��23��6&   $��
20,78,10,0q�62   #��[ 6F   $
 Wrap=�6k   $��
Longditude��6   $	��Top=�6�   $��0��6�   �� 5   
   -   5        $ tbEndLat��5      $��20,132,10,0q�6$   #��[ 69   $
 Wrap=�6^   $��Latitude��6r   $��0��6�   $��23��6�   $	��Top=�6�   �� 5   
   -   5        $ tbEndLon��5      $��23��6$   $��20,160,10,0q�60   #��[ 6E   $
 Wrap=�6j   $��
Longditude��6~   $	��Top=�6�   $��0��6�   �� 5   
   -   5         ��Name$ lbStartPoint��5      $��Start point:��6&     	LabelNord#��[ 6=   $
��Left=�6`   $��	20,16,0,0q�6{   $	��Top=�6�   $	��109��6�   $��0,5,5,5q�6�   �� 5   
   -   5        $ 
lbEndPoint��5      $��
End point:��6$   #��[ 6:   $
��Left=�6]   $��
20,101,0,0q�6x   $	��Top=�6�   $	��109��6�   $��31��6�   $��0,5,5,5q�6�   �� 5   
   -   5         ��Name$ button��5      $��compute��6!     MyButton#��[ 63     MyBrush#���  6U   $��Right=�6|   $��Bottom=�6�   $��1��6�   $	��100��6�   $��50��6�   $��	0,0,10,10q�6�   �� 5   
   -   5         ��Name$ sp��5       � DataContext$ bearingTextOutput��6!   $��70��6A   $��
10,10,10,0q�6M   $��1��6a   $	��Top=�6n    �� Orientation$ 
Horizontal=�6�   .+�5      �� -	   5        $ 	lbBearing��5      $��Bearing:��6'   #��[ 6:   $
��Left=�6]   $��
20,10,0,23q�6x   $��77��6�   �� 5      -
   5        $ 	tbBearing��5      #��[ 6)   $
 Wrap=�6o   $	��190��6�   $��
10,19,10,0q�6�   $��Center=�6�   $	��Top=�6�   $��28��6�   ��6N   �� 	 �� Path$	 
EndBearing�6�   5      5       5!      