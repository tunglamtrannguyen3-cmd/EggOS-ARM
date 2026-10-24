with Board_Config;
with System;

package body Drivers.UART
  with SPARK_Mode
is

   UART_DR : Character
     with Volatile,
          Atomic,
          Address     => System'To_Address (Board_Config.UART_Base),
          Async_Writers => True;

   procedure Put (C : Character) is
   begin
      UART_DR := C;
   end Put;

   procedure Put (S : String) is
   begin
      for C of S loop
         Put (C);
      end loop;
   end Put;

   procedure New_Line is
   begin
      Put (Character'Val (10));
   end New_Line;

end Drivers.UART;