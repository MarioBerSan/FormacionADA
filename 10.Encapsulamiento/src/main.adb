with Persona_Model; use Persona_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   --I�igo : Persona := new C_Persona'(Nombre => To_Unbounded_String("I�igo"));
   I�igo : Persona := Create("I�igo", "Montoya");
   --I�igo : Persona := Create(Nombre => "I�igo", Apellido => "Montoya"); -- agreggate


   --Dineros : Dinero;

begin

   I�igo.Saludar;
   --Dineros := 600.0;
   I�igo.Set_Riqueza(600.00);
   Put_Line(I�igo.Get_Riqueza'Image);


   null;
end Main;
