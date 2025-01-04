```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   Index : Integer := 11;
begin
   if Index in My_Arr'Range then  --Check if index is within range
       My_Arr(Index) := 12; 
   else
       Put_Line("Index out of bounds");
   end if;
exception
   when Constraint_Error =>
      Put_Line("Constraint Error Occurred");
end Example;
```