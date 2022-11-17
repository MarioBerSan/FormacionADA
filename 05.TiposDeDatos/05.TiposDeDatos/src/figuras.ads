
package Figuras is

   type Distancia is new Float;
   type Area is new Float;
   
   function "*" (Left: in Distancia;
                 Right: in Distancia) return Area;
   
   
   function Calcular_Area_Triangulo(Base: in Distancia;
                                    Altura : in Distancia) return Area;
   
   
end Figuras;
