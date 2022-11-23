package Figura_Model is

   
   type C_Figura is abstract tagged private;
   type Figura is access C_Figura'Class;
   
   function Calcular_Area(This: C_Figura) return Float is abstract;
   
private
   
   type C_Figura is abstract tagged record
      null;
   end record;
   

end Figura_Model;
