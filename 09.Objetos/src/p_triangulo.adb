


package body P_Triangulo is

   function Calcular_Area(This: C_Triangulo) return Float is
   begin
      return This.Base * This.Altura / 2.0;
   end Calcular_Area;
   

end P_Triangulo;
