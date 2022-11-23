package body Alumno_Model is

   
   --"Constructor"
   function Create(Nombre: String) return Alumno is
   begin
      return new C_Alumno'(C_Persona with Nombre => To_Unbounded_String(Nombre), 
                           Examenes => Empty_Vector);
   end Create;   
   
   
   --Metodos
   function To_String(This: in C_Alumno) return String is
   begin
         return "Hola soy el alumno " & To_String(This.Nombre);
   end To_String;
   
   -----------------------------------------------------------------------------
   
   procedure Rendir_Examen(This: in out C_Alumno; Nota_Examen: Nota) is
   begin
      This.Examenes.Append(Nota_Examen);
   end Rendir_Examen;
   
   -----------------------------------------------------------------------------
   
   function Calcular_Promedio(This: C_Alumno) return Promedio_Notas is
      type Sumatoria_Notas is new Float range 0.0..(10.0*Float(Length(This.Examenes)));
      Sumatoria : Sumatoria_Notas := 0.0;
   begin
      for Examen of This.Examenes loop
         Sumatoria := Sumatoria_Notas(Examen) + Sumatoria;
      end loop;
      return Promedio_Notas(Float(Sumatoria) / Float(Length(This.Examenes)));
   end Calcular_Promedio;
   
   
end Alumno_Model;
