with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   --Numero : Integer;
   -- Numero : Integer := 20; Se pueden asginar valores al declarar.

begin
   --
   --  --  Insert code here.
   --  -- null;
   --
   --  --Con el use no es necesario anteponer el nombre de la libreria
   --  -- Ada.Text_IO.Put_Line("Hola Mundo");
   --  --  Put_Line("Hola Mundo");
   --
   --  Numero := 10;
   --  -- Put_Line(Numero'Image);
   --
   --  Put_Line("La variable Numero contiene: " & Numero'Image);
   --
   --  declare
   --     Numero : Integer := 15;
   --  begin
   --     Put_Line("El segundo numero es " & Numero'Image);
   --  end;
   --  -- La variable numero aqui ya no existe
   --
   --
   --  declare
   --     -- Nombre : String (1..10); -- Inicializacion explicita
   --     Nombre : String := "Mario"; -- Inicializacion implicita (el tamaño del string se toma del numero de caracteres del string que se le esta poniendo)
   --  begin
   --     Put_Line(Nombre);
   --     Put_Line("El nombre tiene " & Nombre'Length'Image & " caracteres");
   --  end;


   --  Put_Line("Ingrese su nombre");
   --  declare
   --     nombre : String := Get_Line;
   --  begin
   --     Put_Line("Hola " & Nombre);
   --  end;

   --  Put_Line("Ingrese su nombre");
   --  declare
   --     nombre : String := Get_Line;
   --  begin
   --     if (Nombre'Length>0) then
   --        Put_Line("Hola " & Nombre);
   --     else
   --        Put_Line("No has insertado un nombre");
   --     end if;
   --  end;


   -- If como expresion (Parecido a un operador ternario (? : ))
   Put_Line("Ingrese su nombre");
   declare
      nombre : String := Get_Line;
   begin
      Put_Line("Te llamas " & ( if (Nombre'Length>0) then Nombre else " no escribiste") );
   end;



end Main;
