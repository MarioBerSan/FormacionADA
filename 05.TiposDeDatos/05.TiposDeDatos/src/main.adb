with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO;
with Figuras; use Figuras;
with Calendario; use Calendario;


procedure Main is

   --type Nota is new Integer range 1..10; -- Tipo de dato restingido
   type Nota is new Integer range 1..10 with Default_Value => 5; -- tipo de dato restringido
   type Numero_Muy_Largo is range 1..2**56;
   --type Angulo is new Float range 0.0..360.0;
   type Angulo is mod 360; --loa tipos de datos modular solo existen para enteros
   --TODO ESTO SE HA MOVIDO AL PAQUETE
   --TYPES DE CALENDARIO

   --  A : Float := 1.3;
   --  B : Distancia := 5.6;
   Base : Distancia := 10.0;
   Altura : Distancia := 15.0;
   --drArea_Triangulo : Area;

   Nota_Examen : Nota;
   --N : Numero_Muy_Largo;
   Giro : Angulo := 180;
   --Hoy_Es : Dias_Semana;
   --Mañana_Es : Dias_Semana;

begin
   --  A := B; Asignaciones incompatibles
   --  B := A;

   --  A := Float(B);
   --  B := Distancia(A);
   --Area_Triangulo := Base * Altura / 2.0;
   --Nota_Examen := 10;
   --  Nota_Examen := Nota_Examen + 3;

   --Put_Line(N'Size'Image);
   --Put_Line(Giro'Image);
   --Giro := Giro + 185;
   --Put_Line(Giro'Image);
   --
   --  Hoy_Es := Martes;
   --  Put_Line(Hoy_Es'Image); -- Los enumerados se imprimen siempre en mayuscula
   --
   --  Mañana_Es := Dias_Semana'Succ(Hoy_Es);-- para imprimir el siguiente del enumerado
   --  Put_Line(Mañana_Es'Image); --


   --TODO ESTO SE HA MOVIDO AL PAQUETE
   --Recorrer los meses y para cada mes mostrar en que estacion esta (Primavera, Verano, Invierno, Otoño)
   --Para ello definir previamente el enumerado de Estacion

   --TODO ESTO SE HA MOVIDO AL PAQUETE
   --Crear paquete calendario
   --mover datos relacionados
   --agregar mostrar dias y mostrar meses


   --  declare
   --     Hoy : Fecha := (15, Noviembre, 2022);
   --     Cumple_Mario : Fecha := (Dia => 1, Mes => Junio, Año => 1998); --esta forma de definir se llama agregate/// Fecha es un "estruc"
   --  begin
   --  --Mostrar_Dias;
   --  --Mostrar_Meses;
   --
   --     Put_Line("Hoy es " & To_String(Hoy));
   --     Put_Line("Mario cumple el " & To_String(Cumple_Mario));
   --  end;

   --  declare
   --     use Ada.Integer_Text_IO;
   --
   --     type Nota is new Integer range 1..10;
   --     subtype Notas_Buenas is Nota range 8..10;
   --     subtype Notas_Aprobadas is Nota range 4..7;
   --     subtype Notas_Malas is Nota range 1..3;
   --
   --     Examen : Nota := 10;
   --     --Mala_Nota : Notas_Malas;
   --
   --  begin
   --     --Mala_Nota := Examen;-- me deja asignarlo y hace chequeo en tiempo e ejecucion
   --                         --hace una conversion implicta como otros lenguajes
   --
   --     --Put_Line(Examen'Image);
   --
   --     --ejemplo de uso de la practica
   --     Put_Line("Que notas sacaste?");
   --     Get(Integer(Examen));
   --     case Examen is
   --        when Notas_Malas => Put_Line("Te sacaste una mala nota");
   --        when Notas_Buenas => Put_Line("Te sacaste una buena nota");
   --        when Notas_Aprobadas => Put_Line("Te sacaste una mala nota");
   --     end case;
   --  end;


   --subtipos para mayor legibilidad
   --  declare
   --     subtype Cantidad is Positive;
   --
   --     A : Cantidad := 10;
   --     B : Positive := 40;
   --
   --  begin
   --     B := A;
   --     Put_Line("Declaro un alias de tipo");
   --  end;


   null;
end Main;







