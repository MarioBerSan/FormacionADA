with Ada.Containers.Vectors;
with IO; use IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

package Alumno_model is

   type C_Alumno is tagged private;
   type Alumno is access C_Alumno'Class;
   
   type Entrada_Nota is new Integer range 0..10;
   subtype Nota is Entrada_Nota range 1 .. 10;
   
   package Integer_Array_List is new Ada.Containers.Vectors (Element_Type => Nota,
                                                          Index_Type => Positive);
   use Integer_Array_List;
   
   --"Constructor"
   function Create(Nombre: String) return Alumno;
   
   
   --Getters y Setters
   function Get_Nombre(This: C_Alumno) return String;
   --function Get_Notas(This: C_Alumno) return Integer_Array_List;
   --procedure Set_Nota(This: out C_Alumno; Value: Nota);
   
   
   --Metodos
   procedure Rendir_Examen(This: out C_Alumno);
   function Calcular_Promedio(This: C_Alumno) return Float;

   
private
   type C_Alumno is tagged record
      Nombre: Unbounded_String;
      Notas: Integer_Array_List.Vector;
   end record;

end Alumno_model;
