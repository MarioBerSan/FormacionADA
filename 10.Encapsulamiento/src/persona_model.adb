

package body Persona_Model is
   
   
   --"Constructor"
   function Create(Nombre: String; Apellido: String) return Persona is
   begin
      return new C_Persona'(Nombre => To_Unbounded_String(Nombre), 
                            Apellido => To_Unbounded_String(Apellido),
                            Riqueza => 0.0);
   end Create;
   
   
   --Getters y Setters
   function Get_Nombre(This: C_Persona) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   ---------------------------------------------------------------------
   function Get_Apellido(This: C_Persona) return String is
   begin
      return To_String(This.Apellido);
   end Get_Apellido;
   ---------------------------------------------------------------------
   function Get_Riqueza(This: C_Persona) return Dinero is
   begin
      return This.Riqueza;
   end Get_Riqueza;
   ---------------------------------------------------------------------   
   procedure Set_Riqueza(This: out C_Persona; Value: Dinero) is
   begin
      This.Riqueza := Value;
   end Set_Riqueza;

   
   --Metodos  
   procedure Saludar(This: C_Persona) is      
   begin      
      Put_Line("Hola soy " & Get_Nombre(This) & " " & Get_Apellido(This));
      --Put_Line("Hola soy " & This.Get_Nombre & " " & This.Apellido); -- otra forma
   end Saludar;

   
end Persona_Model;
