with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;
with IO; use IO;
with Generic_Io; --use Generic_Io;
with Utils_inv;



procedure Main is

begin

   --  declare
   --                                 --Index type             --Element type
   --  type Arreglo_Entero is array (Positive range <>) of Integer;
   --  --al instanciar tengo que definir el size
   --
   --
   --  package Integer_Array_List is new Ada.Containers.Vectors (Element_Type => Integer,
   --                                                                    Index_Type => Positive);
   --  use Integer_Array_List;
   --
   --
   --  Arreglo : Arreglo_Entero(1..3); --Defino el Size.
   --  Lista : Integer_Array_List.Vector; -- Es dinamica, el size va variando.
   --  --Es lo misma hacer Lista : Vector;
   --
   --  begin
   --
   --  -- Lleno el arreglo con 3 elementos
   --  Arreglo(1) := 32;
   --  Arreglo(2) := 33;
   --  Arreglo(3) := 50;
   --  Ada.Text_IO.Put_Line("El contenido del arreglo ESTATICO es:");
   --  for I of Arreglo loop
   --     Put_Line(I'Image);
   --  end loop;
   --
   --
   --  --Lleno lista con 3 elementos
   --  Append(Lista, 32);
   --  Append(Lista, 33);
   --  Append(Lista, 50);
   --  Ada.Text_IO.Put_Line("El contenido del arreglo DINAMICO es:");
   --  for I of Arreglo loop
   --     Put_Line(I'Image);
   --  end loop;
   --
   --  end;--end begin1


   --Generar una lista dinamica de notas
   -- Preguntar al usuario notas hasta que ingrese un 0
   --luego mostrarla
   --  declare
   --  type Entrada_Nota is new Integer range 0..10;
   --  package Nota_Array_List is new Ada.Containers.Vectors (Element_Type => Nota,
   --                                                         Index_Type => Positive);
   --  use Nota_Array_List;
   --
   --  Lista_Examenes : Nota_Array_List.Vector;
   --  Dato_entrada : Integer;
   --
   --  begin
   --     loop
   --        Dato_entrada := Get_Integer_Between(0, Integer(Nota'Last), "La nota ha sido:");
   --        if(Dato_entrada /= 0) then
   --           Append(Lista_Examenes, Nota(Dato_entrada));
   --        end if;
   --        exit when (Dato_entrada = 0);
   --     end loop;
   --
   --     Put_Line("Las notas son:");
   --
   --     for I of Lista_Examenes loop
   --        Put_Line(I'Image);
   --     end loop;
   --     Put_Line("");
   --
   --
   --  end; --end begin2

   --     declare
   --     --Generar una lista dinamica (Vector o contenedor) de notas
   --     --Preguntar al usuario notas hasta que ingrese un 0
   --     --Luego Mostrarla
   --     type Entrada_Nota is new Integer range 0..10;
   --     subtype Nota is Entrada_Nota range 1 .. 10;
   --
   --     package Integer_Array_List is new Ada.Containers.Vectors
   --       (Element_Type => Nota, Index_Type => Positive);
   --     use Integer_Array_List;
   --
   --     Lista_Notas   : Integer_Array_List.Vector;
   --     --Dato_entrada : Integer;
   --     --Lo pase a...
   --     Dato_entrada : Entrada_Nota;
   --  begin
   --     loop
   --        --Dato_entrada:= Get_Integer_Between(0, Integer(Nota'Last),"Di una Nota. Cero Para Terminar");
   --        --Lo reemplazo por (Me gustaria evitar el casteo en la siguiente linea igual)
   --        Dato_entrada:= Entrada_Nota(Get_Integer_Between(Integer(Entrada_Nota'First), Integer(Entrada_Nota'Last),"Di una Nota. Cero Para Terminar"));
   --
   --       if(Dato_entrada/=0) then
   --              --Append (Lista_Notas, Nota(Dato_entrada));
   --           --Lo reemplazo por
   --           Append (Lista_Notas, Dato_entrada);
   --        end if;
   --        exit when (Dato_entrada=0);
   --     end loop;
   --
   --     Put_Line ("Tus notas son:");
   --     for Valor of Lista_Notas loop
   --        Put_Line (Valor'Image);
   --     end loop;
   --     Put_Line ("");
   --  end;--end begin2


   --  declare
   --     use Utils_Inv;
   --
   --     type Dias is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --
   --     package Dias_IO is new Generic_Io (Tipo => Dias);
   --     use Dias_IO;
   --
   --     procedure Show_Dias renames Show_Discrete;
   --     procedure Swap_Dias is new Swap(Dias);
   --     procedure Show_V is new Show_Vertical(T => Dias,
   --                                           To_String => Dias_IO.To_String);
   --
   --     Dia: Dias;
   --     Otro_Dia : Dias;
   --
   --  begin
   --
   --     --Put_Line("Ingrese un dia");
   --     --  if (Try_Convert(Get_Line, Dia)) then
   --     --     Put_Line("Ingresaste un dia");
   --     --  else
   --     --     Put_Line("Ingresaste cualquier cosa");
   --     --  end if;
   --
   --     Dia := Get_Discrete("Ingrese un dia");
   --     Otro_Dia := Get_Discrete("Ingrese otro dia");
   --     Swap_Dias(Dia, Otro_Dia);
   --     Put_Line("Los dias Intercambiados son " & To_String(Dia) & " y "  & To_String(Otro_Dia));
   --     --Show_Dias;
   --     Show_V(Dia);
   --
   --  end; -- end begin3



   declare
      use Utils_Inv;
      procedure Show_V_Integer is new Show_Vertical(T => Integer,
                                            To_String => Integer'Image);

      N : Integer := 1234;

   begin

      Show_V_Integer(N);

   end; -- end begin4





   null;
end Main;
