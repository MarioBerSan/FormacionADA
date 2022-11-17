with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package Calendario is

   
   type Dias_Semana is (Lunes, Martes, Miercoles, 
                        Jueves, Viernes, Sabado, Domingo); --tipo enumerado/ enum
   
   
   type Meses is (Enero, Febrero, Marzo, Abril, 
                  Mayo, Junio, Julio, Agosto, 
                  Septiembre, Octubre, Noviembre, 
                  Diciembre);
   
   
   type Estaciones is (Primavera, Verano, Otoño, Invierno);
   
   type Dia_Del_Mes is new Integer range 1..31;
   
   type Años is new Integer range 1900..2100;
   
   type Fecha is record
      Dia : Dia_Del_Mes;
      Mes : Meses;
      Año : Años;
   end record;
   
   procedure Mostrar_Dias;
   procedure Mostrar_Meses;
   
   function To_String(Date:Fecha) return String;

end Calendario;
