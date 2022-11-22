with Ada.Text_IO; use Ada.Text_IO;

package Utils_Inv is

   generic
      type T is private;
   procedure Swap(Left, Rigth: in out T);
   
   
   
   generic
      type T is private;
      with function To_String(Value : T) return String;
   procedure Show_Vertical(Value : in T);
      

end Utils_Inv;
