with Ada.Text_IO; use Ada.Text_IO;
with IO; use IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;


procedure Main is

begin

   --  --Declarando Arreglos
   --  declare
   --     type Arreglo_Numeros is array (1..3) of Positive;
   --
   --
   --     Numeros : Arreglo_Numeros;
   --     --Mas_Numeros : Arreglo_Numeros := (10, 20, 30, 50);-- Esto lanza excepcion, sobrepaso la capacidad del array
   --     Mas_Numeros : Arreglo_Numeros := (10, 20, 30);
   --     Todavia_Mas_Numeros : Arreglo_Numeros := (2 => 100, others => 1); --agregate
   --  begin
   --     Numeros(1) := 3;
   --     Numeros(2) := 5;
   --     Numeros(3) := 19;
   --
   --     for I in Numeros'Range loop
   --        Put_Line( "Numeros(" & I'Image & ") = " & Numeros(I)'Image );
   --     end loop;
   --
   --     Put( "Mas_Numeros (" );
   --     for I of Mas_Numeros loop
   --        Put(I'Image);
   --        Put(",");
   --        --Put_Line( "Numeros(" & I'Image & ") = " & Numeros(I)'Image );
   --     end loop;
   --     Put(")");
   --     Put_Line(" ");
   --
   --     Put( "Todavia_Mas_Numeros (" );
   --     for I in Todavia_Mas_Numeros'First..Todavia_Mas_Numeros'Last loop
   --        Put(Todavia_Mas_Numeros(I)'Image);
   --        Put(if(I /= Todavia_Mas_Numeros'Last) then "," else "");
   --     end loop;
   --     Put(")");
   --     Put_Line(" ");
   --
   --  end;



   --Declarar un tipo Nota qie permita almacenar las notas de losexamenes
   --Luego preguntar al alumno cuantos examenes rindio
   --Declarar un arreglo para almacenar sus examenes(declare dentro de otro)
   --Preguntarle uno a uno la nota de los mismos (y almacenarlo(casteo))
   --
   --
   --  declare
   --     type Notas is new Integer range 1..10;
   --     type Notas_Totales is Array (1..Get_Integer("¿Cuantos examenes has tenido?")) of Notas;
   --     Numero_Examenes : Notas_Totales;
   --
   --  begin
   --
   --     for I in Numero_Examenes'Range loop
   --        Numero_Examenes(I) := Notas(Get_Integer_Between(Integer(Notas'First),
   --                                    Integer(Notas'Last), "¿Que nota sacaste en el examen?" & I'Image & "?"));
   --     end loop;
   --
   --     Put_Line("Has sacado las siguientes notas: ");
   --     for I in Numero_Examenes'Range loop
   --        Put_Line("Examen"& I'Image & ":" & Numero_Examenes(I)'Image);
   --     end loop;
   --
   --     --  declare
   --     --
   --     --
   --     --  begin
   --     --
   --     --     Put("¿Que nota has tenido?");
   --     --     for I in Notas'Range loop
   --     --        Notas(I'Image) := Notas'Value(Get_Integer);
   --     --     end loop;
   --     --
   --     --     Put("Las notas son (");
   --     --     for I of Notas_Totales loop
   --     --        if I'Image = Notas_Totales(Notas_Totales'Length)  then
   --     --           Put(I'Image);
   --     --        else
   --     --           Put(I'Image & ",");
   --     --        end if;
   --     --     end loop;
   --     --     Put(")");
   --     --
   --     --  end;
   --
   --  end;

      --Preguntarle uno a uno la nota de los mismos  (y almacenarlo (casteo))
   --  declare
   --     type Nota is new Integer range 1..10;
   --     type Examenes is Array(1..Get_Integer("¿Cuántos examenes has tenido?")) of Nota;
   --     Lista_Examenes : Examenes;
   --  begin
   --     for C in Lista_Examenes'Range loop
   --        Lista_Examenes(C) := Nota(Get_Integer_Between(
   --                                  Integer(Nota'First),
   --                                  Integer(Nota'Last),
   --                                  "¿Qué nota sacaste en el examen" & C'Image & "?"));
   --     end loop;
   --
   --     Put_line("Has sacado las siguientes notas:");
   --     for C in Lista_Examenes'range loop
   --        Put_line("Examen"& C'image & ":" & Lista_Examenes(C)'Image);
   --     end loop;
   --  end;



   --  declare
   --     type Dias_Semana is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --     subtype Fin_De_Semana is Dias_Semana range Sabado..Domingo;
   --
   --     function "+" (Input: in String) return Unbounded_String is
   --     begin
   --        return To_Unbounded_String(Input);
   --     end;
   --
   --     function C(Input: in String) return Unbounded_String renames To_Unbounded_String;
   --
   --     --  --omitir la declaracion de type
   --     --  Dias_En_Ingles : array (Dias_Semana) of Unbounded_String := (To_Unbounded_String("Monday"),
   --     --                                                               To_Unbounded_String("Tuesday"),
   --     --                                                               To_Unbounded_String("Wednesday"),
   --     --                                                               To_Unbounded_String("Thursday"),
   --     --                                                               To_Unbounded_String("Friday"),
   --     --                                                               To_Unbounded_String("Saturday"),
   --     --                                                               To_Unbounded_String("Sunday") );
   --
   --     --sobrecargando operadores
   --     --Dias_En_Ingles : array (Dias_Semana) of Unbounded_String := (+"Monday", +"Tuesday", +"Wednesday", +"Thursday", +"Friday", +"Saturday", +"Sunday");
   --
   --     --con renames
   --     Dias_En_Ingles : array (Dias_Semana) of Unbounded_String := (C("Monday"), C("Tuesday"), C("Wednesday"), C("Thursday"), C("Friday"), C("Saturday"), C("Sunday") );
   --
   --  begin
   --     Put_Line("Ingresa dia de la semana");
   --     for Dia in Dias_Semana loop
   --        Put_Line(Dia'Image);
   --     end loop;
   --
   --     declare
   --        Dia : Dias_Semana := Dias_Semana'Value(Get_Line);
   --     begin
   --        Put_Line(Dia'Image & " en Inglés es " & To_String(Dias_En_Ingles(Dia)) );
   --     end;
   --
   --  end;


   --Unconstraint arrays o vectores sin restriccion
   --  declare
   --     type Nota is range 1..10;
   --     --type Lista_Notas is array(Positive range <>) of Nota;
   --     type Lista_Notas is array(Positive range <>) of Nota with Default_Component_Value => 10;
   --
   --     --Notas : Lista_Notas(1..3);--explicita
   --     Notas : Lista_Notas := (4, 5, 6, 7, 3, 4, 5); --implicita
   --
   --  begin
   --     for Nota  of Notas loop
   --        Put_Line(Nota'Image);
   --     end loop;
   --  end;



   --Rehacer el ejercicio de las notas pero con uncostrained arrays.

   declare
      type Nota is new Integer range 1..10;
      type Lista_Examenes is Array(Positive range <>) of Nota with Default_Component_Value => 4;

      Examenes : Lista_Examenes(1..Get_Integer("¿Cuántos examenes has tenido?"));

      procedure Cargar_Notas(Lista : out Lista_Examenes) is
      begin

         for C in Lista'Range loop
           Lista(C) := Nota(Get_Integer_Between(Integer(Nota'First),
                                                Integer(Nota'Last),
                                                "¿Qué nota sacaste en el examen" & C'Image & "?"));
         end loop;

      end Cargar_Notas;

      procedure Mostrar_Notas(Lista : in Lista_Examenes) is
      begin
         Put_line("Has sacado las siguientes notas:");
         for Examen of Lista loop
            Put_line(Examen'Image);
         end loop;
      end Mostrar_Notas;

      --metodo que devuelva la nota mas alta
      function Nota_Alta (Lista: in Lista_Examenes) return Nota is
         Aux : Nota := 1;
      begin

         for Examen of Lista loop
            if(Examen > Aux) then
              Aux := Examen;
            end if;
         end loop;

         return Aux;
      end Nota_Alta;

      Aux : Nota;

      --  function Nota_Baja (Lista: in Lista_Examenes) return Nota is
      --     Aux : Nota := 10;
      --  begin
      --
      --     for Examen of Lista loop
      --        if(Examen < Aux) then
      --          Aux := Examen;
      --        end if;
      --     end loop;
      --
      --     return Aux;
      --  end Nota_Baja;


      --Funcion que devuelva el promedio
      function Nota_Media (Lista: in Lista_Examenes) return Float is
         --Max : Nota := Nota_Alta;
         --Min : Nota := Nota_Baja;
         Sumatorio : Integer;
         Media : Float;
      begin

         for I in Lista'Range loop
            Sumatorio := Sumatorio + I;
         end loop;

         Media := Float(Sumatorio) / Float(Lista'Length);

         return Media;
      end Nota_Media;

      Media : Float;


   begin

      Cargar_Notas(Examenes);

   Mostrar_Notas(Examenes);

      Aux := Nota_Alta(Examenes);
      Put_Line("Nota más alta " & Aux'Image);

      Media := Nota_Media(Examenes);
      Put_Line("Nota media " & Media'Image);

   end;


   --  Insert code here.
   null;
end Main;





