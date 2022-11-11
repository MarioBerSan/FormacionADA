with Ada.Text_IO; use Ada.Text_IO;
With Ada.Strings.Fixed; -- no pongo use a proposito
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

   procedure Put_Nice_Line(Texto : in String;
                           Subrayado : Character := '*') is -- modificadores in, out, in out.
      use Ada.Strings.Fixed;
   begin
      Put_Line(Texto);
      Put_Line(Texto'Length * Subrayado);
   end;

   procedure Put_Reverse_Line(Texto : in String) is
   begin
      for C of reverse Texto loop
        Put(C);
       end loop;
   end;

   --por defecto reemplaza la i=>1, a=>4, e=>3, s=>5, o=>0, (parametro por defecto)
   --Los reemplazos son cofigurables
   procedure Put_Hacker_Line(Texto:in String; A:String := "4";
                             E:String := "3"; I:String := "1";
                             O:String := "0"; S:String := "5") is
   begin
      for C of Texto loop
         case C is
         when 'i' | 'I' => Put(i);
         when 'a' | 'A' => Put(a);
         when 'e' | 'E'=> Put(e);
         when 's' | 'S'=> Put(s);
         when 'o' | 'O'=> Put(o);
         when others => Put(C);
         end case;
      end loop;
   end;

   function Area_Rectangulo(LadoMayor : Float; LadoMenor: Float) return Float is
   begin
      return LadoMayor * LadoMenor;
   end;


   procedure Intercambiar(A : in out Integer;
                          B : in out Integer) is
      Aux : Integer := A;
   begin
      A := B;
      B := Aux;
   end;


   --S:String := "Hola";
   --N : Float;
begin
   --Put_Nice_Line("Hola subprograma");
   --Put_Nice_Line("Hola subprograma", 'ç');
   --Put_Nice_Line(Texto => "Hola mundo subprograma", Subrayado => '='); -- parametros con nombre

   --  for C of S loop --es of porque estas recorriendo el contenido del array
   --       Put(C);
   --  end loop;

   --Put_Reverse_Line("Hola");

   --Put_Hacker_Line("hola");
   --Put_Hacker_Line("HOLA");

   --  N := Area_Rectangulo(2.0, 5.0);
   --  --Put_Line(N'Image);
   --  Put(N, Exp => 0, Aft => 2);



   --  declare
   --     Primero : Integer := 10;
   --     Segundo : Integer := 20;
   --  begin
   --     Put_Line("Antes " & Primero'Image & " " & Segundo'Image);
   --     Intercambiar(Primero, Segundo);
   --     Put_Line("Despues " & Primero'Image & " " & Segundo'Image);
   --  end;







   null;
end Main;
