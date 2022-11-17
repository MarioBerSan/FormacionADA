package body Calendario is

   procedure Mostrar_Dias is
   begin
      for Dia in Dias_Semana loop
      case Dia is
         when Sabado..Domingo =>
            Put_Line(Dia'Image & " es fin de semana.");
         when Lunes..Viernes =>
            Put_Line(Dia'Image & " es dia de semana.");
      end case;
      end loop;
   end Mostrar_Dias;
   
   procedure Mostrar_Meses is
   begin
   for Mes in Meses loop
      Put_Line("Hoy es " & Mes'Image);
      case Mes is
         when Marzo..Junio =>
            Put_Line("Es " & Primavera'Image);
         when Julio..Septiembre =>
            Put_Line("Es " & Verano'Image);
         when Octubre..Diciembre =>
            Put_Line("Es " & Oto�o'Image);
         when Enero..Febrero =>
            Put_Line("Es " & Invierno'Image);
      end case;
   end loop;
   end Mostrar_Meses;
      
   function To_String(Date:Fecha) return String is
   begin
      return Date.Dia'Image & "/" & Date.Mes'Image & "/" & Date.A�o'Image;
   end To_String;

end Calendario;
