package body Crypto
  with SPARK_Mode
is

   function Compute_Tag (Data : String) return Tag is
      Result : Tag := 0;
   begin
      -- Very simple placeholder (not a real hash).
      -- Replace later with a proper implementation if needed.
      for C of Data loop
         Result := Result + Tag (Character'Pos (C));
      end loop;
      return Result;
   end Compute_Tag;

   function Verify_Tag (Data : String; Expected : Tag) return Boolean is
   begin
      return Compute_Tag (Data) = Expected;
   end Verify_Tag;

end Crypto;
