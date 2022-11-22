with Ada.Text_IO; use Ada.Text_IO;


procedure Main is

begin

   --  declare
   --     A : Integer := 10;
   --     B : Integer := A;
   --  begin
   --     B := 20;
   --     Put_Line(A'Image);
   --  end;

   -------------------------------------------------------------------------------------------

   --  declare
   --     A: Access Integer;
   --
   --     --es lo mismo que lo de arriba pero tipado
   --     --  type Puntero_Entero is access Integer;
   --     --  A: Puntero_Entero;
   --  begin
   --     A := null; -- si esto se comenta entra al if porque por defecto los access tienen null
   --     --A := 2; -- no es una asignacion valida
   --     if (A = null) then
   --        Put_Line("La variable A esta inicializada y no apunta a nada");
   --     end if;
   --
   --     A := new Integer'(2);
   --     Put_Line(A.all'Image);
   --
   --  end;

   ------------------------------------------------------------------------------------------

   declare
      type Puntero_Entero is access Integer;
      AA : Puntero_Entero := new Integer'(30);
      BB : Puntero_Entero := AA;
   begin
      BB.all := 50;
      Put_Line(AA.all'Image);
   end;



   --  Insert code here.
   null;
end Main;
