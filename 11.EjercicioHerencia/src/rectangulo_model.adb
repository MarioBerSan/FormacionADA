package body Rectangulo_Model is

   function Create(Base: Float; Altura: Float) return Rectangulo is   
   begin
      return new C_Rectangulo'(C_Figura with Base => Float(Base), 
                                             Altura => Float(Altura) );
   end Create;
   
   function Calcular_Area(This: C_Rectangulo) return Float is
   begin
      return Float( (This.Base * This.Altura) / 2.0);
   end;
   

end Rectangulo_Model;
