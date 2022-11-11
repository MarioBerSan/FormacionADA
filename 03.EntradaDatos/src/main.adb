with Ada.Text_IO; use Ada.Text_IO;


procedure Main is

   --Va a preguntar un strign al usuario hasta que no sea vacio
   --  function Get_Non_Empty_Line return String is
   --
   --  begin
   --     loop
   --        Put_Line("Ingrese su nombre:");
   --        declare
   --           Nombre: String := Get_Line;
   --        begin
   --           exit when Nombre'Length /= 0;
   --        end;
   --     end loop;
   --
   --     return Nombre;
   --
   --  end Get_Non_Empty_Line;

   function Get_Non_Empty_Line(Prompt : String := "Ingrese un texto no vacío";
                               Error : String := "Texto vacio. Uno no vacio pls") return String is
   begin
      Put_Line(Prompt);
      loop
         declare
            Nombre: String := Get_Line;
         begin
            if(Nombre'Length>0) then
               return Nombre;
            end if;
            Put_Line(Error);
         end;
      end loop;
   end Get_Non_Empty_Line;



  function Try_Convert_Integer
     (Texto:in String;
      Texto_Como_Entero:out Integer) return Boolean is
  begin
      Texto_Como_Entero := Integer'Value(Texto);
      return True;
  exception
      when others => return False;
  end Try_Convert_Integer;


   --va a preguntar un valor hasta quye el usuario ingrese un entero
   --usar funcion anterior
   function Get_Integer(Prompt : String := "Ingrese un numero";
                        Error : String := "no es numero") return Integer is

   begin
      Put_Line(Prompt);
      loop
         declare
            numero: Integer := 0;
         begin
            if(Try_Convert_Integer(Get_Line, numero)) then
               return numero;
            end if;
            Put_Line(Error);
         end;
      end loop;
   end Get_Integer;

--la de él
   function Get_Integer2(Prompt : String := "Ingrese un numero";
                        Error : String := "no es numero") return Integer is
   Result : Integer := 0;
   begin
      Put_Line(Prompt);
      while (not(Try_Convert_Integer(Get_Line, Result))) loop
         Put_Line(Error);
      end loop;
      return Result;
   end Get_Integer2;



   function Get_Integer_Between(Min : Integer;
                                Max : Integer;
                                Prompt : String := "Ingresa numero";
                                Empty_Error: String := "Texto vacio";
                                UnderFlow_error : string := "Numero pequeño";
                                OverFlow_Error : String := "Numero grande") return Integer is
   Numero : Integer;
   begin
      --Put_Line(Prompt);
      Numero := Get_Integer2("Ingrese un numero");
      while(Numero>Min and Numero<Max) loop
         if(Numero<Min) then
            Put_Line(UnderFlow_error);
         else
            Put_Line(OverFlow_error);
         end if;
      end loop;
      return Numero;
   end Get_Integer_Between;



begin
   --Put_Line("Ingrese su nombre:");
   declare
      --Nombre : String := Get_Non_Empty_Line;
             Nombre : String := Get_Non_Empty_Line("Ingrese su nombre: ", "error");
       Edad : Integer;
   begin
      --  Put_Line("Hola " & Nombre);
      --
      --  Put_Line("Ingrese su edad");
      --  declare
      --     Edad : Integer := 0;
      --  begin
      --
      --     if(Try_Convert_Integer(Get_Line, Edad)) then
      --        Put_Line("Tienes " & Edad'Image);
      --     else
      --        Put_Line("No ingresaste un numero");
      --     end if;
             --  end;
             --Edad := Get_Integer2("Ingrese su edad");
             --Put_Line("Hola " & Nombre & " de " & Edad'Image & " años");
      Edad := Get_Integer_Between(1, 5);
      Put_Line(Edad'Image);
   end;

   null;
end Main;
