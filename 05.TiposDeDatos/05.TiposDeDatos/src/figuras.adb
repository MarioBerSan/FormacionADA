
package body Figuras is

   
   function "*" (left: distancia; right: distancia) return area is
   begin
      return area(left) * area(right);
   end "*";
   
   
   function calcular_area_triangulo(base: in distancia;
                                    altura : in distancia) return area is
   begin
      return (base * altura) / 2.0;
   end calcular_area_triangulo;

   
end Figuras;
