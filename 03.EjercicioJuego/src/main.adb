with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is

   --G : Generator;
   --Numero_Al_Azar : Uniformly_Distributed;
   --Numero_Al_Azar : Float;
   --Numero_Al_Azar : Integer;
   --Es_Correcto : boolean := True;
   --No_Es_Correcto : boolean := False;
--begin

   --  Reset(G);
   --  for I in 1..10 loop
   --     Numero_Al_Azar := Integer( (Random(G) * 100.0) + 1.0 ); --numeros entre 1 y 100
   --     --Put(Numero_Al_Azar, Exp => 0);
   --     --Put_Line("");
   --     Put_Line(Numero_Al_Azar'Image);
   --  end loop;


   --La computadora determina un numero al azar
   --el usuario tiene N(por defecto 5) oportunidades
   --la computadora informa al usuario si el numero ingresado es mayor o menor al numero secreto
   --si el usuario adivina gana, si no adivina dentro de las n oportunidades pierde.

   Default_Numero_Intentos : constant Integer := 5;
   G : Generator;
   Numero_Al_Azar : Integer;
   Numero_Usuario : Integer;

begin

   Reset(G);
   Numero_Al_Azar := Integer( (Random(G) * 100.0) + 1.0 );
   Put_Line(Numero_Al_Azar'Image);

   for I in 1..Default_Numero_Intentos loop
   Put_Line("Ingrese un numero:");
   Numero_Usuario := Integer'Value(Get_Line);

   if (Numero_Usuario = Numero_Al_Azar) then
         Put_Line("Ganó");
         exit;
   elsif (Numero_Usuario < Numero_Al_Azar) then
         Put_Line("Su numero introducido es menor");
   elsif (Numero_Usuario > Numero_Al_Azar) then
         Put_Line("Su numero introducido es mayor");
   end if;
   end loop;

   null;
end Main;
