with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;


package Persona_Model is

   type C_Persona is abstract tagged private;
   type Persona is access C_Persona'Class;
   
   --como la clase persona es abstracta no tengo constructor
   procedure D;
   function To_String(This: C_Persona) return String is abstract;
   
private
   
   type C_Persona is abstract tagged record
      Nombre: Unbounded_String;
   end record;
   
end Persona_Model;
