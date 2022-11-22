with Persona_Model; use Persona_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   --Iñigo : Persona := new C_Persona'(Nombre => To_Unbounded_String("Iñigo"));
   Iñigo : Persona := Create("Iñigo", "Montoya");
   --Iñigo : Persona := Create(Nombre => "Iñigo", Apellido => "Montoya"); -- agreggate


   --Dineros : Dinero;

begin

   Iñigo.Saludar;
   --Dineros := 600.0;
   Iñigo.Set_Riqueza(600.00);
   Put_Line(Iñigo.Get_Riqueza'Image);


   null;
end Main;
