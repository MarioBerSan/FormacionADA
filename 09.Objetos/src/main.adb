with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with P_Persona; use P_Persona;
with P_Heroe; use P_Heroe;
with P_Triangulo; use P_Triangulo;

procedure Main is
begin

   -- Java
   --  class Persona{
   --    Nombre:String;
   --    Apellido:String;
   --  }

   -- Python
   --  class Person:
   --    def __init__(self, name, age):
   --       self.Nombre = name
   --       self.Apellido = age


   declare

      Una_Persona : Persona := null;
      Un_Heroe : Heroe := null;
      Un_Triangulo : Triangulo := null;

      --Crear e instanciar una clase llamada "Heroe"
      --Los heroes tienen un nombre, fuerza y puntosDeVida(hp)

   begin

      Una_Persona := new C_Persona'(Nombre => To_Unbounded_String("Mario"),
                                    Apellido => To_Unbounded_String("Bermejo Sanchez"));

      Una_Persona.Saludar;


      Un_Heroe := new C_Heroe'(Nombre => To_Unbounded_String("Drax"),
                               Fuerza => 1000,
                               Puntos_De_Vida => 500);

      Un_Heroe.Presentar;

      Un_Triangulo := new C_Triangulo'(Base => 10.0, Altura => 10.0);
      Put_Line(Un_Triangulo.Calcular_Area'Image);

   end;


   null;
end Main;
