package body P_Heroe is

   
   procedure Presentar(This: C_Heroe) is      
   begin      
      Put_Line("Me presento: "                 
               & To_String(This.Nombre)                 
               & ", tengo"                 
               & This.Fuerza'Image
               & " de fuerza y "
               & This.Puntos_De_Vida'Image
               & " de salud.");      
   end Presentar;
   

end P_Heroe;
