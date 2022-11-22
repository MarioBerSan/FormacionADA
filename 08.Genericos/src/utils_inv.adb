package body Utils_Inv is

   
   
   procedure Swap(Left, Rigth: in out T) is
      Aux : T := Left;
   begin
      Left := Rigth;
      Rigth := Aux;
   end Swap;
   
   
   
   --  procedure Show_Vertical(Value : T) is
   --  
   --  begin
   --     Put("(");
   --     for I in T'First..T'Last loop
   --        Put_Line(To_String(I));
   --        Put(if (EnumItem/=Tipo'Last) then "," else "");
   --     end loop;
   --     Put(")");
   --     Put_Line("");
   --  
   --  end Show_Vertical;
   
   procedure Show_Vertical(Value : T) is
   
   begin
      for C of To_String(Value) loop
         Put_Line(C'Image);
      end loop;
      
   end Show_Vertical;
   
   
   
end Utils_Inv;
