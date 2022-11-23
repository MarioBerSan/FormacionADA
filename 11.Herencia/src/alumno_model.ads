with Persona_Model; use Persona_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;

package Alumno_Model is

   --type C_Alumno is tagged private;
   type C_Alumno is new C_Persona with private;
   type Alumno is access C_Alumno'Class;
   
   type Nota is new Integer range 1..10;
   type Promedio_Notas is new Float range 0.0..10.0 with Default_Value => 0.0;
   
   --"Constructor"
   function Create(Nombre: String) return Alumno;
   
   --Metodos
   overriding function To_String(This: in C_Alumno) return String;
   procedure Rendir_Examen(This: in out C_Alumno; Nota_Examen: Nota);
   function Calcular_Promedio(This: C_Alumno) return Promedio_Notas;
   
   
private
   
   package Lista_Notas is new Ada.Containers.Vectors (Element_Type => Nota,
                                                      Index_Type => Positive);
   use Lista_Notas;
   
   
   type C_Alumno is new C_Persona with record
      Nombre : Unbounded_String;
      Examenes : Lista_Notas.Vector := Empty_Vector; -- o empty, hace lo mismo
   end record;
   
   
end Alumno_Model;
