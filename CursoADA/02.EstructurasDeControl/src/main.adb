with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;


procedure Main is

begin

   --  declare
   --     Default_Mayoria_Edad : constant Integer := 18;  -- constante
   --     Default_Edad_Persona_Mayor : constant Integer := 60;
   --     Edad : Integer := 19;
   --
   --  begin
   --
   --     Put_Line("Ingrese su edad:");
   --  Edad := Get_Line; no funciona tipos incompatibles, getline pilla string
   --  Get(Edad);
   --     Edad := Integer'Value(Get_Line); -- igual que lo anterior pero con un cast.
   --
   --
   --     Put_Line("Su edad es : " & Edad'Image);
   --     if (Edad >= Default_Edad_Persona_Mayor) then  -- puede ir la condicion con o sin parentesis
   --        Put_Line("Usted es una persona mayor de 60");
   --  elsif (Edad >= Default_Mayoria_Edad) then
   --     elsif (Edad in Default_Mayoria_Edad..Default_Edad_Persona_Mayor) then
   --   elsif (Edad in 18..60) then se puede usar un rango
   --        Put_Line("Usted es MAYOR de edad");
   --     else
   --        Put_Line("Usted es MENOR de edad");
   --     end if;
   --
   --  end;


   --
   --  --Pedirle al usuario un numero y decir si es par o imapr
   --  declare
   --     Edad : Integer;
   --  begin
   --
   --     Put_Line("Ingrese su edad:");
   --     Edad := Integer'Value(Get_Line);
   --
   --     if (Edad mod 2 = 0) then
   --       Put_Line("Edad par");
   --     else
   --       Put_Line("Edad impar");
   --     end if;
   --
   --     --Put_Line (  if (Edad mod 2 = 0) then "Es par" else "Es impar" ); Expression if ternaria, no seria estructura de control
--
   --  end;


   --  declare
   --  begin
   --     --  Put_Line("Prueba estructura for:");
   --     --  for I in 1..10 loop
   --     --     Put_Line(I'Image);
   --     --  end loop;
   --
   --     Put_Line("For regresivo:");
   --     for I in reverse 1..10 loop
   --        --delay 1.0 es nativo el delay del lenguaje, el numero que pide es en segundos y float
   --        Put_Line(I'Image);
   --     end loop;
   --     Put_Line("Despegue");
   --  end;




   --Preguntar al usuario el nombre y cuantas veces quiere que te salude
   --saludar al usuario N veces

   --     Put_Line("Ingrese su nombre");
   --  declare
   --     Nombre : String := Get_Line;
   --     Numero : Integer;
   --  begin
   --
   --     Put_Line("Ingrese numero de veces que quiere que le salude");
   --     Numero := Integer'Value(Get_Line);
   --
   --     for I in 1..Numero loop
   --        Put_Line(Nombre);
   --     end loop;
   --
   --  end;



   --  declare
   --     N : Integer;
   --  begin
   --     Put_Line("Ingrese un numero:");
   --     Get(N);
   --     while N>0 loop
   --        N := (N/2);
   --        Put_Line("Dividido 2 es " & N'Image);
   --     end loop;
   --  end;


   -- Preguntar al usuario numero
   -- hasta que el usuario ingrese un 0
   --con while
   --mostrra la sumatoria de numero

   --  declare
   --     N : Integer;
   --     Sumatorio : Integer := 0;
   --  begin
   --     Put_Line("Ingrese un numero:");
   --     Get(N);
   --     while N /= 0 loop
   --        Sumatorio := Sumatorio + N;
   --        Put_Line("Suma es: " & Sumatorio'Image);
   --        Put_Line("Ingrese otro numero:");
   --        Get(N);
   --     end loop;
   --  end;

   --     declare
   --     N : Integer;
   --     Sumatorio : Integer := 0;
   --  begin
   --     loop
   --        Put_Line("Ingrese un numero:");
   --        Get(N);
   --        exit when (N = 0);  --se pueden tener varios exits
   --        Sumatorio := Sumatorio + N;
   --     end loop;
   --     Put_Line("Suma es: " & Sumatorio'Image);
   --  end;




   -- Preguntar al usuario nombre y saludarlo
   -- hasta que el usuario ingrese un string vacio
   --con loop


   --  declare
   --  begin
   --     loop
   --        Put_Line("Ingrese su nombre");
   --        declare
   --           Nombre : String := Get_Line;
   --        begin
   --           exit when (Nombre'Length = 0);
   --           Put_Line("Hola " & Nombre);
   --           --Nombre := Get_Line;
   --           --exit when (Nombre'Length = 0);
   --        end;
   --     end loop;
   --  end;




   --ejemplo del case

   declare
      Nota : Integer;
   begin
      Put_Line("Ingrese su nota del examen");
      Nota := Integer'Value(Get_Line);
      case Nota is
         when 0 => Put_Line("Examen copia. Habble con el rector");
         when 1..4 => Put_Line("Suspenso");
         when 5 => Put_Line("Aprobado con lo justo");
         when 6 | 7 => Put_Line("Aprobado");
         when 8..9 => Put_Line("Muy Bien");
         when 10 => Put_Line("Excelente");
         when others => Put_Line("Fuera de rango");
      end case;
   end;




   null;
end Main;
