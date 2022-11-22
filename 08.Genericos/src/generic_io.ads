with Ada.Text_IO; use Ada.Text_IO;
with Ada.Characters.Handling; use Ada.Characters.Handling;


generic
   type Tipo is (<>); --El tipo es discreto

package Generic_Io is

      
   Default_Prompt : constant String := "Ingresa un numero";
   Default_Error_Mesage : constant String := "Ha ingresado un valor incorrecto, vuelva a intentarlo";
   
   function Try_Convert(Valor_Como_String: in String;
                        Valor_Convertido: out Tipo) return Boolean;
   
   --
   function Get_Discrete(Prompt : String := Default_Prompt;
                         Error : String := Default_Error_Mesage) return Tipo;
   
   function To_String(Item: Tipo) return String;
   
   procedure Show_Discrete;

end Generic_Io;
