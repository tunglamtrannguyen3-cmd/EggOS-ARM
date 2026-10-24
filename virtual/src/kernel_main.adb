with Drivers.UART;

procedure Kernel_Main
  with SPARK_Mode
is
begin
   Drivers.UART.Put ("EggOS, the new future of OS" & Character'Val (10));
   loop
      null;
   end loop;
end Kernel_Main;
