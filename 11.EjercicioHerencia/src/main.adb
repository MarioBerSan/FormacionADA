with Rectangulo_Model; use Rectangulo_Model;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

   Rec : Rectangulo := Create(2.0, 4.0);

begin

   --crear clase abstratcta figura sin atributos
   --crear metodo abstracto clacular_area
   --Crear subclase rectangulo(base, altura) que herede de figura
   --sobreescribir(overriding) el metodo calcular_area

   Ada.Float_Text_IO.Default_Exp := 0;
   Ada.Float_Text_IO.Default_Aft := 3;

   Put(Rec.Calcular_Area);

   null;
end Main;
