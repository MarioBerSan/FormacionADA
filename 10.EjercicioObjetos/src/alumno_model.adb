


package body Alumno_model is

   
   --"Constructor"
   function Create(Nombre: String) return Alumno is
   begin
      return new C_Alumno'(Nombre => To_Unbounded_String(Nombre), Notas => Empty_Vector);
   end Create;

   
   --Getters y Setters
   function Get_Nombre(This: C_Alumno) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   
   
   --Metodos
   procedure Rendir_Examen(This: C_Alumno) is

      Calificacion : Nota;
   begin
      Calificacion := Nota(Get_Integer_Between(Integer(Nota'First), 
                                               Integer(Nota'Last),
                                               "Ingresa tu nota: "));
      
      --Append(This.Notas, Calificacion);
      This.Notas.Append(Calificacion);
      
      Put_Line ("Tus notas son: ");
      for Valor of This.Notas loop
         Put_Line (Valor'Image);
      end loop;
      Put_Line ("");
      
   end Rendir_Examen;
   -------------------------------------------------------------------
   function Calcular_Promedio(This: C_Alumno) return Float is
      type Sumatoria_Notas is new float range 0.0..(10.0*Float(Length(This.Notas)));
      Suma : Sumatoria_Notas := 0.0;
   begin
      Put_Line("Tu promedio de notas es: ");
      for C of This.Notas loop
         Suma := Sumatoria_Notas(C) + Suma;
      end loop;
      return Float(Suma/Sumatoria_Notas((Length(This.Notas))));
   end Calcular_Promedio;
   
   
end Alumno_model;
