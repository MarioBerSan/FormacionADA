with Figura_Model; use Figura_Model;


package Rectangulo_Model is

   type C_Rectangulo is new C_Figura with private;
   type Rectangulo is access C_Rectangulo'Class;
   
   function Create(Base: Float; Altura: Float) return Rectangulo;
   
   overriding function Calcular_Area(This: C_Rectangulo) return Float;
      
private
   
   type C_Rectangulo is new C_Figura with record
      Base : Float := 0.0;
      Altura : Float := 0.0;
   end record;
   

end Rectangulo_Model;
