package Crypto
  with SPARK_Mode
is
   -- Placeholder for future security primitives.
   -- Currently only provides a simple integrity tag type.

   type Tag is mod 2**32;

   function Compute_Tag (Data : String) return Tag
     with Global => null;

   function Verify_Tag (Data : String; Expected : Tag) return Boolean
     with Global => null;

end Crypto;
