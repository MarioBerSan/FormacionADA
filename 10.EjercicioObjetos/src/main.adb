with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with Alumno_model; use Alumno_model;

procedure Main is

   -- Crear paquete alumno_model
   --crear clase alumno, -nombre, vector dinamico generico(Ada.containers.Vectors) de Notas
   --Tiene que tener un constructor
   --getter para el nombre
   --metodo RendirExamen que recibe una nota
   --metodo calcular promedio
   --en el main un caso de prueba que verifique

   Iñigo : Alumno := Create("Iñigo");

begin

   Put_Line("Hola soy el alumno " & Iñigo.Get_Nombre);


   null;
end Main;
