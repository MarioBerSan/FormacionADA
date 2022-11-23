with Alumno_Model; use Alumno_Model;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Aula;
with Profesor_Model; use Profesor_Model;

procedure Main is

   Jaimito : Alumno := Create("Jaimito");
   Einstein : Profesor := Create("Einstein");
   --Juan : Persona := Create("Juan");


   --  package Promedio_IO is new Ada.Text_IO.Float_IO(Promedio_Notas);
   --  use Promedio_IO;


   procedure Show_Alumno(A : Alumno) is
   begin
      Put_Line(A.To_String);
   end Show_Alumno;

   package Curso_Ada is new Aula(Tipo_Integrantes => Alumno,
                                 Mostrar_Integrante => Show_Alumno);


   --P : Persona := new C_Persona'();

begin
   --agregarle al proyecto el profesor_model
   --adentro de una clase profesor
   --cosntructor
   --tienen nombre,
   --un To_String
   --cursos_dictados: integer
   --un dictar_curso que incrementa en uno cursos dictados



   Ada.Float_Text_IO.Default_Exp := 0;
   Ada.Float_Text_IO.Default_Aft := 3;

   Put_Line(Jaimito.To_String);
   Jaimito.Rendir_Examen(2);
   Jaimito.Rendir_Examen(5);
   Jaimito.Rendir_Examen(5);
   Jaimito.Rendir_Examen(3);
   Jaimito.Rendir_Examen(7);

   Put("Mi promedio notas es ");
   Put(Float(Jaimito.Calcular_Promedio));
   Put_Line("");

   Put("El cuso está impartido por ");
   Put(Einstein.To_String);
   Put_Line("");

   Put("Presentando el curso ");
   Curso_Ada.Asistentes.Append(Jaimito);
   Curso_Ada.Mostrar_Asistentes;



   --  Insert code here.
   null;
end Main;
